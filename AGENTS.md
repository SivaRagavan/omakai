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

## Release Tagging (CI)

- Hex publish runs only when pushing version tags matching `v*` (e.g. `v0.1.1`).
- Bump the version in `mix.exs` before creating/pushing the tag.


## Git Commit Guidelines

Use **Conventional Commits** format for all commit messages:

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

**Types:**
- `feat` - New feature
- `fix` - Bug fix
- `docs` - Documentation only
- `style` - Formatting, no code change
- `refactor` - Code change that neither fixes a bug nor adds a feature
- `test` - Adding or updating tests
- `chore` - Maintenance tasks, dependency updates

**Examples:**
```
feat(cli): add `tunedmodel build` command
fix(ci): publish to Hex only on version tags
docs: update README links to tunedmodel.com
test(core): add Tunedmodel.hello/0 doctest coverage
chore(release): bump version to 0.1.1
```

## Required Reading

- Review `MANIFESTO.md` before making architectural decisions or major changes.
