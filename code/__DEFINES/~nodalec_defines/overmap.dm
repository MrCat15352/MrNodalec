#define OVERMAP_GENERATOR_SOLAR "solar_system"
#define OVERMAP_GENERATOR_RANDOM "random"

// Star spectral types. A star's visible color is based on this.
// Only loosely adherent to real spectral types, because real spectral types
// are actually just a tool for classifying stellar emission spectra and
// don't exactly correspond to different "types" of star.
#define STAR_O 0 // Very hot/bright blue giant (IRL some of these are main-sequence)
#define STAR_B 1 // Bright blue main sequence star / blue giant / white dwarf
#define STAR_A 2 // Light blue main sequence star / cool blue giant/dwarf
#define STAR_F 3 // White main sequence star
#define STAR_G 4 // Yellow main sequence star / yellow giant
#define STAR_K 5 // Orange main sequence star / hot red giant
#define STAR_M 6 // Red dwarf or red giant
#define STAR_L 7 // Cool red dwarf/giant OR very warm brown dwarf
#define STAR_T 8 // Medium brown dwarf
#define STAR_Y 9 // Very cool brown dwarf

//Amount of times the overmap generator will attempt to place something before giving up
// #define MAX_OVERMAP_PLACEMENT_ATTEMPTS 5

// Z level of the overmap
#define OVERMAP_Z_LEVEL 1 // aka centcom z

// size of the overmap (OVERMAP_SIZE x OVERMAP_SIZE)
#define OVERMAP_SIZE 25 // keep this odd to provide a centre tile

// These overmap coords are configured to place it in the top left of the z level
#define OVERMAP_LEFT_SIDE_COORD 1
#define OVERMAP_RIGHT_SIDE_COORD (OVERMAP_LEFT_SIDE_COORD + (OVERMAP_SIZE - 1))

#define OVERMAP_NORTH_SIDE_COORD (world.maxy)
#define OVERMAP_SOUTH_SIDE_COORD (OVERMAP_NORTH_SIDE_COORD - (OVERMAP_SIZE - 1))

//Possible ship states
#define OVERMAP_SHIP_IDLE "idle"
#define OVERMAP_SHIP_FLYING "flying"
#define OVERMAP_SHIP_ACTING "acting"
#define OVERMAP_SHIP_DOCKING "docking"
#define OVERMAP_SHIP_UNDOCKING "undocking"

///Used to get the turf on the "physical" overmap representation.
#define OVERMAP_TOKEN_TURF(x_pos, y_pos) locate(SSovermap.overmap_vlevel.low_x + SSovermap.overmap_vlevel.reserved_margin + x_pos - 1, SSovermap.overmap_vlevel.low_y + SSovermap.overmap_vlevel.reserved_margin + y_pos - 1, SSovermap.overmap_vlevel.z_value)

///Name of the file used for ship name random selection, if any new categories are added be sure to add them to the schema, too!
#define SHIP_NAMES_FILE "ship_names.json"

// Burn direction defines
#define BURN_NONE 0
#define BURN_STOP -1

// The filepath used to store the admin-controlled next round outpost map override.
#define OUTPOST_OVERRIDE_FILEPATH "data/outpost_override.json"

/// The fraction of non-voters that will be added to the transfer option when the vote is finalized.
#define TRANSFER_FACTOR clamp((world.time / (1 MINUTES) - 120) / 240, 0, 1)
