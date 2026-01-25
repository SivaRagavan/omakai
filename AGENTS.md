# AGENTS

This repo takes inspiration from Elixir/OTP. Prefer Elixir-flavored conventions even in non-Elixir code.

## Elixir-Inspired Coding Practices

- Favor small, pure functions. Keep functions focused and composable.
- Prefer explicit data transformations (pipelines) over hidden side effects.
- Use clear naming; avoid cleverness.
- Use `snake_case` for variables and function names.
- Use leading underscores for intentionally unused variables/args (Elixir-style):
  - `_unused` for named-but-unused values
  - `_` for intentionally ignored values
- Keep error handling explicit:
  - Prefer returning tagged results like `{:ok, value}` / `{:error, reason}` (or equivalents in other languages).
  - Avoid exceptions for expected failures.
- Keep boundaries clear:
  - Parse/validate inputs at the edges.
  - Keep core logic deterministic and testable.

## Concurrency & Fault Tolerance

- Prefer designs that support parallel execution (task decomposition).
- Make failure modes explicit; build recovery paths (retry, fallback, partial results).
- Avoid global mutable state; prefer isolated workers and message passing.

## Required Reading

- Review `MANIFESTO.md` before making architectural decisions or major changes.
