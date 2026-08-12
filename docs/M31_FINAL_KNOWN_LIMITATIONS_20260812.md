# M31 Final Known Limitations / Non-blocking Observations — 2026-08-12

M31 is accepted with the following retained non-blocking observations.

1. **Previously generated challenge terrain is not rewritten.** A challenge island generated before M31 can retain its old STANDARD physical layout while deterministic M31 classification/presentation treats it as Blockade. This is intentionally preferred over regenerating accepted terrain or player builds.
2. **No autopilot.** Expedition retrofit improves range/capacity tradeoffs but flight remains manually controlled.
3. **No fourth storage bank.** Slot 46 is a fourth module slot, not a fourth 18-slot cargo bank. Storage Module count remains capped at three to match the fixed accepted 91-slot layout.
4. **Headless stale-process interference.** The first user-local M31 headless attempt hung because a previous-version process remained active. Clearing the stale process and rerunning unchanged code passed; this is an environment/process-lifecycle issue, not an M31 defect.
5. Existing accepted observations from M19, M26 and M29 remain unchanged unless explicitly addressed later.

These items do not block M31 acceptance. Any future fix that changes persistence, world generation or slot semantics must preserve accepted saves or use an explicit migration.
