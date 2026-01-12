# ADR 0001: Contract-first API development

## Status
Accepted

## Context
We need predictable integration changes between frontend and backend.

## Decision
All API changes will be made by updating the OpenAPI contract first,
then updating backend and frontend code to match.

## Consequences
- API changes are visible early.
- Integration work is traceable and reviewable.

