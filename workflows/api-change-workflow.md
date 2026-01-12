# API Change Workflow (POC)

This workflow keeps frontend and backend in sync when APIs change.

## Steps
1. Update the OpenAPI contract in `contracts/`.
2. Add or update tests for the new behavior.
3. Update backend implementation to match the contract.
4. Update frontend integration to match the contract.
5. Open PRs and link them to the same ticket or issue.

## Local guardrail (optional)

Run `shared/scripts/check-contract-change.ps1` before committing. It fails if the
contract is staged without matching backend or frontend changes.

## AI agent guidance
- Load contract + standards before editing.
- If the contract changes, update both services or open follow-up tickets.
- Call out compatibility impact in the PR description.
