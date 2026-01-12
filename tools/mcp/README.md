# Local MCP Server (POC)

This folder contains a minimal local MCP server configuration for exposing the
three repos as read-only context:

- `Context Repository/`
- `Backend/`
- `Frontend/`

## GitHub sources

These are the canonical GitHub repos for collaboration:

- Context: https://github.com/ANISHG-26/expense-tracker-context-registry.git
- Backend: https://github.com/ANISHG-26/expense-tracker-backend.git
- Frontend: https://github.com/ANISHG-26/expense-tracker-frontend.git

## Fresh chat bootstrap

When a new chat starts, load these files first to establish shared standards:

- `Context Repository/README.md`
- `Context Repository/standards/engineering-standards.md`
- `Context Repository/standards/api-change-policy.md`
- `Context Repository/workflows/api-change-workflow.md`
- `Context Repository/contracts/expense-tracker/openapi.yaml`

## Integration flow (contract-first)

1) Change the API contract in the context repo.
2) Update backend implementation and tests to match.
3) Update frontend integration and UI to match.
4) Use context packs to keep prompts scoped and consistent.

## Quick start (example)

1) Start the MCP server using the config in `mcp.json`.
2) Point your AI tool to the MCP server endpoint.
3) Use the context packs in `context-packs/` to quickly load relevant files.

## Context packs

- `context-packs/backend.json` for backend changes
- `context-packs/frontend.json` for frontend changes
- `context-packs/contract-change.json` for contract-first changes

These are suggestions to keep context small and relevant.

