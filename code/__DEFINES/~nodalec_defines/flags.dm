
/// conducts electricity (metal etc.)
#define CONDUCT_1 (1<<1)
/// For machines and structures that should not break into parts, eg, holodeck stuff
#define NODECONSTRUCT_1 (1<<2)
/// item has priority to check when entering or leaving

/// Is the thing currently spinning?
#define IS_SPINNING_1 (1<<12)
/// Is this atom on top of another atom, and as such has click priority?

/// If Abductors are unable to teleport in with their observation console
#define ABDUCTOR_PROOF (1<<11)
///Whther this area is iluminated by starlight. Used by the aurora_caelus event
#define AREA_USES_STARLIGHT (1<<13)

///Turns the dir by 180 degrees
#define DIRFLIP(d) turn(d, 180)

