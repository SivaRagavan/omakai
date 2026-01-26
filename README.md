<h1 align="center">Exlang</h1>
<p align="center">Opinionated, end-to-end framework for shipping language models.</p>
<p align="center"><a href="https://exlang.org">exlang.org</a></p>

## What is Exlang
Exlang is an opinionated, full-stack framework that helps developers build and launch language models without having to wire up a training pipeline, inference infrastructure, or an app experience manually.

## What is an Exlang Model?
An Exlang Model is the product: a shippable, versioned, runnable release of intelligence that you can run locally or deploy.

It typically includes:
- Model artifact(s): weights and/or adapters, plus tokenizer and model metadata.
- Runtime configuration: defaults, limits, policies, routing, and connectors.
- Training recipe: data inputs and repeatable build steps for training or fine-tuning.
- Evaluation suite: datasets, eval tasks, scoring, and pass/fail gates.
- Runtime processes: the workers/services that load the model and expose it.
- Chat definition: customizable, templatizable multimodal chat (text + voice) across channels.
- Release metadata: versioning, checksums, and provenance for reproducible builds.

## Manifesto
- **Model over app**: ship intelligence, not just an interface.
- **Conventions over glue**: strong defaults beat hand-rolled pipelines.
- **Exploration over docking**: prioritize the horizon over comfort.
- **Pirate over navy**: stay independent, neutral, and platform-agnostic.
- **Speed over spaghetti**: ship experiments, not spaghetti code.

## Core mission
Make it dramatically easier to build, evaluate, and release language models as shippable products.

- Reduce the friction from idea → model by removing pipeline setup as a prerequisite.
- Make training and evaluation repeatable build steps.
- Make shipping a model feel as normal as shipping software.

## Tech stack (Elixir)
The stack is centered on Elixir/Erlang (OTP) for concurrency, distribution, and reliability.

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
