<h1 align="center">Tunedmodel</h1>
<p align="center">Opinionated, end-to-end framework for shipping fine-tuned language models.</p>
<p align="center"><a href="https://tunedmodel.com">tunedmodel.com</a></p>
<p align="center">
  <a href="https://github.com/tunedmodel/tunedmodel"><img alt="GitHub stars" src="https://img.shields.io/github/stars/tunedmodel/tunedmodel?style=social"></a>
  <a href="https://hex.pm/packages/tunedmodel"><img alt="Hex version" src="https://img.shields.io/hexpm/v/tunedmodel.svg?style=flat-square"></a>
  <a href="https://hexdocs.pm/tunedmodel/"><img alt="HexDocs" src="https://img.shields.io/badge/hexdocs-docs-8A2BE2?style=flat-square"></a>
  <a href="LICENSE"><img alt="MIT License" src="https://img.shields.io/badge/license-MIT-green?style=flat-square"></a>
</p>

## What is Tunedmodel?
Tunedmodel is an Elixir-first framework for building, evaluating, and shipping fine-tuned language models.

It provides a consistent project shape and tooling so a “model” is more than weights:
- Training recipes you can rerun
- Evals that gate releases
- Versioned artifacts and configuration
- A runtime you can run locally or deploy

## What is a Tunedmodel Project?
A **Tunedmodel project** is the unit you build and ship.

It’s a repository that bundles everything required to go from:
- data → fine-tune → eval → release bundle

In practice, a project typically includes:
- Data sources/connectors
- Fine-tuning steps and parameters
- Evaluation datasets and scoring
- Runtime defaults (limits, policies, routing)
- Optional chat UX and tool integrations

## Key capabilities (planned)
- Data connectors for files, repos, and URLs
- Repeatable training recipes that produce release bundles
- Built-in testing via `tunedmodel test` to run evals and gate releases
- Skill packs for common capabilities
- Built-in coding assistant via `tunedmodel code`

## Typical workflow (planned)
- Run `tunedmodel new` to scaffold a project
- Add data through connectors
- Run `tunedmodel build` to produce a release bundle
- Run `tunedmodel start` to run the runtime

## Tech stack (Elixir)
Tunedmodel is centered on Elixir/OTP, with likely integrations across:
- Phoenix / LiveView for the runtime UI
- Nx / Axon / Bumblebee for model execution
- Oban / Broadway for durable pipelines

## Installation
If/when Tunedmodel is published to Hex, install by adding `tunedmodel` to `mix.exs`:

```elixir
def deps do
  [
    {:tunedmodel, "~> 0.1.1"}
  ]
end
```

HexDocs: https://hexdocs.pm/tunedmodel/
