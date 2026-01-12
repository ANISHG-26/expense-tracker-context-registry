# Context Repository POC

This repository is the shared, versioned source of truth for SDLC standards,
architecture, and API contracts used by all services and AI agents.

## Goals
- Keep integration contracts stable and visible.
- Make API changes traceable and reviewable.
- Provide consistent guidance for human + AI contributors.

## Structure
- `architecture/` High-level system and service context.
- `contracts/` API contracts (OpenAPI) used across services.
- `standards/` Engineering and SDLC policies.
- `workflows/` Process docs for API change and AI usage.
- `templates/` PR and ADR templates.
- `adrs/` Architecture Decision Records.

## How teams use this repo
1. Read the relevant contract and standards before changes.
2. Update contracts first when API changes are needed.
3. Keep ADRs for notable decisions.
4. Reference these docs in service PRs.

## MCP usage (recommended)
Expose this repo via an MCP server as read-only context to all agents.
Agents should be configured to load:
- `contracts/` for API integration work.
- `standards/` for SDLC requirements.
- `workflows/` for change steps.

