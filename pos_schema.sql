-- POS + Inventory: sync-ready SQLite schema (MVP)
-- Rules for every table:
--   id          = UUID (text), generated on the device, never an auto-increment number
--   updated_at  = ISO datetime, set on every insert/update
--   deleted_at  = soft delete (never hard delete, so sync can tell the cloud)
--   synced      = 0 when changed locally, 1 after the cloud confirmed it
--   shop_id     = which shop the record belongs to (needed once cloud hosts many shops)

PRAGMA foreign_keys = ON;

-- ---------- Shop and users ----------
CREATE TABLE shop (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  shop_type TEXT,                 -- kirana / milk / cloth / shoes / tuckshop
  phone TEXT,
  address TEXT,
  currency TEXT DEFAULT 'PKR',
  receipt_footer TEXT,
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

CREATE TABLE user (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL REFERENCES shop(id),
  name TEXT NOT NULL,
  username TEXT NOT NULL UNIQUE,
  password_hash TEXT NOT NULL,
  role TEXT NOT NULL,             -- owner / manager / cashier
  is_active INTEGER DEFAULT 1,
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

-- ---------- Products and stock ----------
CREATE TABLE category (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  name TEXT NOT NULL,
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

CREATE TABLE unit (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  name TEXT NOT NULL,             -- kg, gram, litre, dozen, piece, packet, carton, meter
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

CREATE TABLE product (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  category_id TEXT REFERENCES category(id),
  name TEXT NOT NULL,
  name_urdu TEXT,
  brand TEXT,
  base_unit_id TEXT REFERENCES unit(id),
  has_variants INTEGER DEFAULT 0, -- 1 for cloth/shoes (size, color)
  track_expiry INTEGER DEFAULT 0, -- 1 for milk/kirana items
  low_stock_level REAL DEFAULT 0,
  is_active INTEGER DEFAULT 1,
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

-- Every sellable item is a variant. Simple products have exactly one variant.
CREATE TABLE product_variant (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  product_id TEXT NOT NULL REFERENCES product(id),
  barcode TEXT,
  sku TEXT,
  size TEXT,
  color TEXT,
  purchase_price REAL DEFAULT 0,
  sale_price REAL DEFAULT 0,
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);
CREATE INDEX idx_variant_barcode ON product_variant(barcode);

-- Extra units for one product, e.g. 1 carton = 24 piece
CREATE TABLE product_unit_conversion (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  product_id TEXT NOT NULL REFERENCES product(id),
  unit_id TEXT NOT NULL REFERENCES unit(id),
  factor_to_base REAL NOT NULL,
  sale_price REAL,
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

-- Stock is NEVER edited directly. Every change is a movement row.
-- Current stock = SUM(qty) of movements for a variant.
CREATE TABLE stock_movement (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  variant_id TEXT NOT NULL REFERENCES product_variant(id),
  qty REAL NOT NULL,              -- + in, - out (in base unit)
  reason TEXT NOT NULL,           -- opening / purchase / sale / sale_return / purchase_return / adjustment / damage
  ref_type TEXT,                  -- sale / purchase / adjustment
  ref_id TEXT,
  batch_no TEXT,
  expiry_date TEXT,
  created_by TEXT REFERENCES user(id),
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);
CREATE INDEX idx_stock_variant ON stock_movement(variant_id);

-- ---------- People ----------
CREATE TABLE customer (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  name TEXT NOT NULL,
  phone TEXT,
  address TEXT,
  credit_limit REAL DEFAULT 0,
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

CREATE TABLE supplier (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  name TEXT NOT NULL,
  phone TEXT,
  address TEXT,
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

-- ---------- Sales ----------
CREATE TABLE sale (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  bill_no TEXT NOT NULL,
  customer_id TEXT REFERENCES customer(id),   -- NULL = walk-in
  sale_date TEXT NOT NULL,
  subtotal REAL NOT NULL,
  discount REAL DEFAULT 0,
  tax REAL DEFAULT 0,
  total REAL NOT NULL,
  paid REAL DEFAULT 0,
  status TEXT DEFAULT 'completed',            -- completed / held / returned
  created_by TEXT REFERENCES user(id),
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

CREATE TABLE sale_item (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  sale_id TEXT NOT NULL REFERENCES sale(id),
  variant_id TEXT NOT NULL REFERENCES product_variant(id),
  qty REAL NOT NULL,
  unit_id TEXT REFERENCES unit(id),
  unit_price REAL NOT NULL,
  cost_price REAL DEFAULT 0,                  -- saved at sale time so profit stays correct
  discount REAL DEFAULT 0,
  line_total REAL NOT NULL,
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

-- ---------- Purchases ----------
CREATE TABLE purchase (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  supplier_id TEXT REFERENCES supplier(id),
  invoice_no TEXT,
  purchase_date TEXT NOT NULL,
  total REAL NOT NULL,
  paid REAL DEFAULT 0,
  created_by TEXT REFERENCES user(id),
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

CREATE TABLE purchase_item (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  purchase_id TEXT NOT NULL REFERENCES purchase(id),
  variant_id TEXT NOT NULL REFERENCES product_variant(id),
  qty REAL NOT NULL,
  unit_id TEXT REFERENCES unit(id),
  unit_cost REAL NOT NULL,
  expiry_date TEXT,
  line_total REAL NOT NULL,
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

-- ---------- Money (udhaar, payments, expenses) ----------
-- One ledger for customer and supplier balances.
-- Customer balance = SUM(debit - credit); Supplier balance = SUM(credit - debit)
CREATE TABLE ledger_entry (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  party_type TEXT NOT NULL,       -- customer / supplier
  party_id TEXT NOT NULL,
  entry_date TEXT NOT NULL,
  debit REAL DEFAULT 0,
  credit REAL DEFAULT 0,
  ref_type TEXT,                  -- sale / purchase / payment
  ref_id TEXT,
  note TEXT,
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);
CREATE INDEX idx_ledger_party ON ledger_entry(party_type, party_id);

CREATE TABLE payment (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  ref_type TEXT,                  -- sale / purchase / ledger
  ref_id TEXT,
  party_type TEXT,
  party_id TEXT,
  method TEXT NOT NULL,           -- cash / card / easypaisa / jazzcash / bank
  amount REAL NOT NULL,
  direction TEXT NOT NULL,        -- in / out
  paid_at TEXT NOT NULL,
  created_by TEXT REFERENCES user(id),
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

CREATE TABLE expense (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  title TEXT NOT NULL,            -- rent, bijli, tankhwah
  amount REAL NOT NULL,
  expense_date TEXT NOT NULL,
  note TEXT,
  created_by TEXT REFERENCES user(id),
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

CREATE TABLE day_closing (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  close_date TEXT NOT NULL,
  opening_cash REAL DEFAULT 0,
  expected_cash REAL DEFAULT 0,
  counted_cash REAL DEFAULT 0,
  difference REAL DEFAULT 0,
  closed_by TEXT REFERENCES user(id),
  updated_at TEXT NOT NULL, deleted_at TEXT, synced INTEGER DEFAULT 0
);

-- ---------- Audit and sync ----------
CREATE TABLE activity_log (
  id TEXT PRIMARY KEY,
  shop_id TEXT NOT NULL,
  user_id TEXT REFERENCES user(id),
  action TEXT NOT NULL,           -- e.g. delete_sale, change_price, discount_given
  table_name TEXT,
  record_id TEXT,
  detail TEXT,
  created_at TEXT NOT NULL,
  synced INTEGER DEFAULT 0
);

CREATE TABLE sync_state (
  id INTEGER PRIMARY KEY CHECK (id = 1),
  last_synced_at TEXT,
  device_id TEXT NOT NULL
);

-- ---------- Handy views for reports ----------
CREATE VIEW v_stock AS
SELECT variant_id, SUM(qty) AS current_qty
FROM stock_movement
WHERE deleted_at IS NULL
GROUP BY variant_id;

CREATE VIEW v_daily_sales AS
SELECT date(sale_date) AS day,
       COUNT(*) AS bills,
       SUM(total) AS sales
FROM sale
WHERE deleted_at IS NULL AND status = 'completed'
GROUP BY date(sale_date);
