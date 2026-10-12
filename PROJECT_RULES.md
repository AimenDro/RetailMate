# PROJECT_RULES.md

## Product
Offline-first POS + inventory + record-keeping app for small shops in Pakistan
(kirana, milk/dairy, cloth, shoes, tuck shop). One app, configurable per shop type.

Platforms: Windows desktop first. Android later (same Flutter codebase).
Language: Flutter (Dart). Database: SQLite via the `drift` package.
Source of truth for the database: `pos_schema.sql`. Source of truth for the plan: `ROADMAP.md`.

## How to work (very important)
1. Read `PROJECT_RULES.md`, `ROADMAP.md` and `pos_schema.sql` before every task.
2. Do ONE task at a time. Never build features that are not in the current task.
3. Before writing code, show a short plan (files to create/change) and WAIT for my approval.
4. After coding, list the files changed and give exact steps for me to test it.
5. Do not change the database schema on your own. If you think it needs a change, explain why and ask me first.
6. Do not add new packages without telling me why.
7. If something is unclear, ask a question instead of guessing.

## Architecture
```
lib/
  data/      database (drift tables, DAOs), repositories
  domain/    business logic: billing, stock, ledger, reports (pure Dart, unit tested)
  ui/        screens, widgets, themes
  l10n/      localization files (English + Urdu)
  core/      utils, constants, helpers
test/        unit tests (domain layer must be tested)
```
- UI never talks to the database directly. UI -> domain -> data.
- Keep screens small. Reuse widgets.

## Database rules
- Every table has: `id` (UUID text, generated on device), `updated_at`, `deleted_at` (soft delete), `synced`, and `shop_id` where the schema has it.
- Never hard delete records. Set `deleted_at`.
- Always set `updated_at` and `synced = 0` on every insert/update (use one shared helper).
- Stock is NEVER edited directly. Every stock change is a row in `stock_movement`.
  Current stock = SUM of movements.
- Save `cost_price` on `sale_item` at the time of sale (so old profit reports stay correct).
- Any operation that touches several tables (e.g. saving a sale + stock movements + ledger + payment) must run inside ONE database transaction.
- Dates are stored as ISO 8601 text.

## Money rules
- All money and quantity calculations live in `domain/` with unit tests.
- Never use floating point errors silently: round money to 2 decimals in one shared helper.
- Test with real examples: discount, partial payment, udhaar, return, multiple units.

## UI rules
- Billing screen must be fast: keyboard friendly, barcode scanner works as keyboard input, big readable buttons.
- All user-visible text goes through localization (English + Urdu). No hard-coded strings.
- Support right-to-left layout for Urdu.
- Show clear errors. Never crash silently.

## Security rules
- Passwords are hashed (never stored in plain text).
- Roles: owner, manager, cashier.
  Cashier cannot delete bills, change prices, or give discounts above a limit without permission.
- Sensitive actions (delete sale, change price, discount, stock adjustment) are written to `activity_log`.

## Sync-readiness (for later)
- Do not build cloud sync yet.
- Just keep the data sync-ready: UUIDs, `updated_at`, `deleted_at`, `synced`.

## Out of scope for now
Cloud sync, owner dashboard, multi-branch, payroll, online payments, WhatsApp/SMS.
Do not build these unless the current task says so.

## Definition of done (every task)
- App builds and runs.
- Feature works end to end.
- Unit tests for any calculation logic pass (`flutter test`).
- No analyzer errors (`flutter analyze`).
- I received the list of changed files and test steps.
