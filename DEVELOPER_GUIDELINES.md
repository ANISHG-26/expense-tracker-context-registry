# Developer Guidelines (POC)

This document defines standardized development practices for the Expense Tracker
POC across the context, backend, and frontend repositories. All contributors and
AI agents should follow these guidelines.

## Core principles

- Contract-first changes: update the OpenAPI contract before backend/frontend.
- Small, reviewable PRs: keep changes focused and easy to reason about.
- Tests and checks: every change should be validated locally before review.
- Traceability: link work to an issue, ticket, or ADR.

## Repository roles

- Context repo: contracts, architecture, standards, workflows, ADRs.
- Backend repo: API implementation, tests, runtime configuration.
- Frontend repo: UI, API integration, client logic.

## Required reading (new contributors)

- `Context Repository/README.md`
- `Context Repository/standards/engineering-standards.md`
- `Context Repository/standards/api-change-policy.md`
- `Context Repository/workflows/api-change-workflow.md`
- `Context Repository/contracts/expense-tracker/openapi.yaml`

## New hire setup

Clone all three repos side-by-side so tooling can find the shared context:

- `expense-tracker-context-registry`
- `expense-tracker-backend`
- `expense-tracker-frontend`

Optional: open the multi-repo workspace:
`Context Repository/tools/mcp/expense-tracker.code-workspace`

If you only open the frontend repo in VS Code, you must still keep the context
repo locally or point your MCP server at a local clone so contracts and standards
are available.

## API change workflow (contract-first)

1) Update `Context Repository/contracts/expense-tracker/openapi.yaml`.
2) Update backend implementation and tests.
3) Update frontend integration and UI.
4) Open PRs and link them to the same issue.

Local guardrail: run `shared/scripts/check-contract-change.ps1` before committing,
or enable the root pre-commit hook.

## Branching and PRs

- Use feature branches: `feat/<short-description>` or `fix/<short-description>`.
- Require at least one human review.
- Every PR must reference an issue or ticket.
- Include test output in the PR description.

## Testing and linting

Backend:
- Lint: `ruff check .`
- Format: `ruff format .`
- Tests: `pytest`

Frontend:
- Lint: `npm run lint`
- Dev: `npm run dev`

## Code review checklist

- Contract updated if API changed.
- Tests updated and passing.
- Frontend/backend kept in sync.
- No breaking changes without a migration plan.

## AI agent usage

- Always load the contract and standards before editing code.
- Use context packs from `Context Repository/tools/mcp/context-packs/`.
- If unsure about scope, ask for clarification.

## Release and change tracking

- Use ADRs for major decisions (see `Context Repository/templates/adr.md`).
- Keep changes documented in PRs and issues.

