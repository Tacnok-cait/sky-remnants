# M41 Update Notes — 2026-08-13

Status: **candidate — awaiting user-local acceptance**.

## Skybridge Builder / 天桥构筑器

M41 adds one append-only handheld tool: `skyremnants:skybridge_builder`.

- main hand holds the builder;
- offhand supplies a supported building block stack;
- use a horizontal side face of an existing block;
- the server extends a straight line outward by at most **8 blocks**;
- survival consumes exactly the blocks successfully placed;
- creative `instabuild` does not consume blocks.

The builder never overwrites an existing block and never skips over an obstruction. M41 v1 accepts only a predictable material subset: full collision shape, no block entity and no block-state properties. This intentionally rejects orientation-sensitive blocks such as logs instead of guessing orientation.

Recipe uses existing endgame materials only: End Rod x2, Shulker Shell x1, Redstone x2, Pipe Wrench x1, Copper Ingot x2 and Nether Star x1.

M41 does not change world generation, SavedData, Data Components, vehicle NBT, container layouts, payload schemas, Docking Base persistence or M40 Dockyard Deployment behavior.
