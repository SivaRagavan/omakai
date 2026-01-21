![Omakai logo](./omakai-logo.svg)

# Omakai

Local-first AI development framework for shipping AI apps with strong defaults.

https://omakai.org

## Overview
Omakai is a local-first AI development framework that scaffolds, trains, tests, and packages applications with a cohesive toolchain. It helps teams move from idea to a shippable app without assembling a large stack.

## Key capabilities
- Project scaffolding for data, configs, tests, and UI surfaces.
- Data connectors for files, repos, and URLs.
- Training recipes that produce repeatable release bundles.
- Built-in testing to gate releases.
- UI templates for AI interaction surfaces (CSS, Tailwind, or custom styling).
- Skill packs for common capabilities.
- Built-in coding assistant via `omakai code`.
- Release bundles with profiles and checksums.

## Typical workflow
- Run `omakai new` to scaffold a project.
- Add data through connectors.
- Enable skill packs.
- Run `omakai train` to build a local release bundle.
- Use `omakai code` to iterate on the project.
- Customize UI and ship the release bundle.

## What ships
- Local-first runtime with no API keys by default.
- End-to-end local stack for chat with a custom model.
- Release bundle that can be run, tested, and distributed.
