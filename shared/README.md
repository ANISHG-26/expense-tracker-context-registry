# Shared Assets

This folder contains shared assets used across the frontend and backend repos.

## Files

- `shared/docker-compose.yml`: local dev compose for frontend + backend.
- `shared/scripts/check-contract-change.ps1`: guardrail for contract-first changes.

## Usage

- Docker: run from context repo root:
  `docker compose -f shared/docker-compose.yml up --build`

- Contract guard (manual):
  `powershell -ExecutionPolicy Bypass -File shared/scripts/check-contract-change.ps1`

