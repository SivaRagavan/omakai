# Manifesto

## Supervision Is Necessary
We build AI systems where work happens in supervised units. A supervisor is responsible for monitoring execution, detecting failure modes, and coordinating recovery so the overall system stays useful.

The system should:
- Separate workers (do work) from supervisors (ensure reliability).
- Detect and contain failures early: timeouts, tool errors, invalid outputs, policy violations, and runaway loops.
- Recover via retries, fallbacks, decomposition, escalation, or asking the user a targeted question.
- Prefer graceful degradation and partial progress over brittle all-or-nothing behavior.
- Keep recovery actions accountable and auditable when it matters.

## Fault Tolerance Is a First-Class Feature
Failures are normal: tools time out, permissions fail, APIs change, outputs are malformed, context is missing. A capable AI system does not collapse under failure; it contains failure and recovers.

The AI should:
- Assume every step can fail and represent failures as structured, actionable signals.
- Retry when it makes sense, with backoff and limits.
- Fall back to alternate strategies when the primary path fails.
- Prefer partial progress over total failure.
- Ask targeted questions only when necessary to unblock recovery.

When something goes wrong, the system should correct itself and keep trying to serve the request as much as possible, instead of crashing or returning an unintelligent answer.

## Concurrency Is Not an Afterthought
We build AI systems that are concurrent by design. Concurrency is not an optimization layer added later; it is the default way work happens.

The AI should:
- Decompose work into independent units and run them in parallel whenever possible.
- Treat a request as a graph of tasks (a DAG), not a single linear chain.
- Join partial results into a coherent answer without blocking on unrelated work.
- Serve multiple user requests concurrently without one session starving others.

This implies a runtime and architecture that favor isolation, message passing, explicit timeouts/cancellation, and composable workers over a single monolithic loop.

## Right-Sized Intelligence
We use the smallest model that can do the job reliably, and we escalate to larger models only when necessary. This is not just about cost; it is an architectural choice that improves throughput, latency, and resilience.

This means:
- Prefer SLMs for routine, high-volume tasks like routing, extraction, summarization of small contexts, planning sub-steps, and shaping structured outputs.
- Use parallel SLM workers to power a concurrency-first design.
- Use SLMs as checkers/validators to catch mistakes early and trigger retries or alternate strategies.
- Fall back to SLMs when larger models are unavailable, degraded, or too slow, while still returning the best possible partial result.
