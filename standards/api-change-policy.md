# API Change Policy (POC)

## Contract-first
- Update the OpenAPI contract before implementing code changes.
- Contract changes require explicit review by code owners.

## Versioning and compatibility
- Prefer backward-compatible changes.
- If breaking changes are required, document a migration path.
- Keep old endpoints until consumers are updated or a sunset date is agreed.

## Required updates
- Backend: update implementation and tests.
- Frontend: update client code and UI behavior.
- Docs: update `contracts/` and, if needed, an ADR.

