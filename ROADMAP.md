# ROADMAP.md

Rule: finish and test one phase in a real shop before starting the next.
Tick a task `[x]` only after it is tested by me.
Start with ONE shop type (kirana). Other shop types come after the pilot.

---

## Phase 0: Preparation (no coding by the agent)
- [ ] Install Flutter SDK, VS Code / Antigravity, Git
- [ ] Create GitHub repo
- [ ] Find 2-3 real shopkeepers for testing
- [ ] Write the MVP feature list

## Phase 1: Foundation
- [ ] 1.1 Create Flutter project with the folder structure from PROJECT_RULES.md, enable Windows desktop, add drift, set up theme. No screens yet.
- [ ] 1.2 Create all drift tables from `pos_schema.sql` with a shared helper that sets UUID id, updated_at, synced. Add a test that inserts and reads one record.
- [ ] 1.3 Login screen and user roles (owner/manager/cashier), hashed passwords, default owner created on first run.
- [ ] 1.4 Shop setup screen (name, type, phone, address, receipt footer).
- [ ] 1.5 Backup and restore (copy database file to a chosen folder / restore from a file).
- [ ] 1.6 Localization setup (English + Urdu, RTL support).

Milestone: app opens, login works, data saves to the database.

## Phase 2: Products and Stock
- [ ] 2.1 Category and unit management (list, add, edit, soft delete).
- [ ] 2.2 Product add/edit for simple products (one variant): barcode, sale price, purchase price, low stock level.
- [ ] 2.3 Product list with search by name or barcode.
- [ ] 2.4 Opening stock entry using `stock_movement`.
- [ ] 2.5 Stock list using `v_stock`, highlight low stock.
- [ ] 2.6 Stock adjustment (damage, lost, correction) with reason, logged in `activity_log`.

Milestone: 50-100 items entered, stock visible and correct.

## Phase 3: Billing (POS)
- [ ] 3.1 Billing screen UI + calculations only (search/scan, cart, quantity, discount, total, change). Calculations in domain layer with unit tests.
- [ ] 3.2 Save sale in ONE transaction: `sale`, `sale_item` (with cost_price), negative `stock_movement`, `payment`.
- [ ] 3.3 Hold/resume bill.
- [ ] 3.4 Delete bill (owner permission only, logged).
- [ ] 3.5 Receipt: PDF receipt (58mm / 80mm) and printing.
- [ ] 3.6 Sale return: stock added back, amount reversed.
- [ ] 3.7 Cashier permission limits (discount limit, no price change).

Milestone: a shopkeeper can do a full day of billing.

## Phase 4: Purchase and Ledger
- [ ] 4.1 Supplier management.
- [ ] 4.2 Purchase entry: `purchase`, `purchase_item`, positive `stock_movement`, update purchase price.
- [ ] 4.3 Purchase return.
- [ ] 4.4 Customer management.
- [ ] 4.5 Udhaar sale: unpaid part goes to `ledger_entry`.
- [ ] 4.6 Receive payment from customer, pay supplier (`payment` + `ledger_entry`).
- [ ] 4.7 Customer and supplier ledger screens (balance + history).

Milestone: buying stock, selling on credit and collecting payment all work.

## Phase 5: Reports and Day Closing
- [ ] 5.1 Daily / monthly sales and profit report.
- [ ] 5.2 Stock report, best selling and slow items.
- [ ] 5.3 Expense entry and expense report.
- [ ] 5.4 Day closing (expected cash vs counted cash).
- [ ] 5.5 Export reports to PDF / Excel.

Milestone: shopkeeper sees the full day's accounts on one screen.

## Phase 6: Pilot test (real shops)
- [ ] Install on 2-3 real shops (free).
- [ ] Collect feedback weekly, log bugs.
- [ ] Test with real printer, scanner and slow computers.
- [ ] Fix bugs. Only add features the shopkeepers repeatedly ask for.

Milestone: MVP stable, at least 2 shops using it daily.

## Phase 7: Shop-specific features (one at a time)
- [ ] 7.1 Expiry tracking (milk, kirana).
- [ ] 7.2 Variants: size / color (cloth, shoes) + barcode label printing.
- [ ] 7.3 Multiple units and conversions (kg/gram, dozen, carton).
- [ ] 7.4 Milk subscription: daily delivery record and monthly bill.
- [ ] 7.5 Urdu receipt.
- [ ] 7.6 Loyalty / discount offers (optional).

## Phase 8: Android app
- [ ] 8.1 Make UI responsive for phone screens.
- [ ] 8.2 Camera barcode scanning.
- [ ] 8.3 Bluetooth thermal printer.
- [ ] 8.4 Build and test on real Android devices.

## Phase 9: Cloud sync + Owner dashboard
- [ ] 9.1 Backend (Supabase or Node.js + PostgreSQL), per-shop data separation.
- [ ] 9.2 One-way sync (shop -> cloud) using `synced`, `updated_at`, sync queue, retry on failure.
- [ ] 9.3 Owner login.
- [ ] 9.4 Owner dashboard (read only): today's sales and profit, low stock, udhaar, expenses and day closing, "last synced" time.
- [ ] 9.5 Test with internet on/off.

## Phase 10: Launch
- [ ] 10.1 Windows installer and update method.
- [ ] 10.2 Licensing: free trial, then paid plan.
- [ ] 10.3 Demo video, WhatsApp page, simple website.
- [ ] 10.4 First 10 paying customers, support process.

---

## Current phase
Phase 1, Task 1.1
