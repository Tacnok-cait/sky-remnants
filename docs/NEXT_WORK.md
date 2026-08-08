# Next Work

Current baseline: M20 final verified.

## M21 candidate: first-release design closure

Before release hardening, review only confirmed gaps from the design audit:

Priority items:

1. Resource fail-safe review:
   - complete loss of critical early resources;
   - animal recovery paths.

2. Design difference decisions:
   - decide whether differences are intentional evolution or require implementation:
     - early wheat setup;
     - intelligent assembler interaction model;
     - challenge rewards;
     - collision behavior;
     - progress evaluation semantics.

3. Release hardening:
   - remove GameTest code/data from production JAR while preserving development GameTest execution.

4. Visual release polish:
   - replace placeholder airship appearance without changing airship storage, networking, or save format.

Do not expand into long-term systems before release candidate work is complete.
