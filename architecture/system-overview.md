# System Overview (POC)

The POC includes:
- Frontend web app (Expense Tracker UI).
- Backend API service (Expense Tracker API).
- Context repository (this repo) for contracts and standards.

Integration is contract-driven via OpenAPI:
- Backend implements the contract.
- Frontend consumes the contract.
- Changes flow from contract updates to service updates.

