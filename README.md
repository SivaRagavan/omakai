<h1 align="center">Exlang</h1>
<p align="center">Opinionated, end-to-end framework for shipping language models.</p>
<p align="center"><a href="https://exlang.org">exlang.org</a></p>

## What is Exlang
Exlang is an opinionated, full-stack framework that helps developers build language models without having to wire up a training pipeline, inference infrastructure, or an app experience manually.

## What is an Exlang Model?
An Exlang Model is a locally trained language model that ships with a completely customizable chat experience, ready to run locally or deploy.

It typically includes:
- Training recipe: data sources plus repeatable training/fine-tuning steps.
- Evaluation suite: datasets, tasks, scoring, and gates.
- Model artifacts: weights/adapters, tokenizer, and model metadata.
- Configuration: defaults, limits, policies, routing, and connectors.
- Runtime: processes/services that load the model and expose it.
- Chat channels: templatizable multimodal chat (text + voice).

## Core mission
Make it dramatically easier to build, evaluate, and release language models as shippable products.

- Reduce the friction from idea → shippable model.
- Make training and evaluation repeatable build steps.
- Make shipping a model feel as normal as shipping software.

## Tech stack (Elixir)
The stack is centered on Elixir.

Potential ecosystem components we may use:
- Phoenix + Plug: HTTP APIs and web runtime.
- Phoenix LiveView: interactive pages and chat without heavy frontend JS.
- Phoenix PubSub + Presence: realtime events, channels, and multi-client state.
- Ecto: data access, migrations, validation, and multi-database support.
- SQLite/Postgres: persistence options depending on deployment footprint.
- Oban: durable background jobs and workflows.
- Broadway: backpressure-aware data ingestion pipelines.
- Nx/Axon + Explorer: numerical computing, model execution, and dataframes.
- Bumblebee: HuggingFace model integration on top of Nx.
- Livebook: reproducible notebooks for experiments, evals, and training recipes.
- Telemetry + OpenTelemetry: metrics, traces, and performance instrumentation.
- Finch/Tesla: HTTP clients for connectors and integrations.
- Release tooling (mix releases): repeatable, self-contained deployment artifacts.

## Key capabilities
- A shared project shape so teams can develop and use their own models without setting up the pipeline from scratch.
- Data connectors for files, repos, and URLs.
- Training recipes that produce repeatable release bundles.
- Built-in testing via `exlang test` to run evals and gate releases.
- Customizable, templatizable multimodal chat (text + voice).
- Skill packs for common capabilities.
- Built-in coding assistant via `exlang code`.
- Release bundles with profiles and checksums.

## Proposed features
- Agentic reasoning (planning + tool use loops).
- Pipeline to fine-tune `gpt-oss-20b` end-to-end (data → training → evals → release bundle).

## Typical workflow
- Run `exlang new` to scaffold a project through a wizard that sets AI parameters (name, languages, knowledge bases, tools, and chat/voice format).
- Use `exlang code` as the default way to build the AI with a coding agent.
- Add data through connectors.
- Enable skill packs.
- Run `exlang build` to build a local release bundle.
- Run `exlang start` to start the AI runtime.
- Customize the chat experience and ship the release bundle.

## Who it’s for
- Builders shipping local-first models end-to-end.
- Engineers who want to move fast and ship models quickly.
- Researchers who want to run experiments faster.
