#> tlc:load/gen/scoreboards
#
# Generates essential scoreboards for The Lost Continent.

#region
	# Scoreboards
		## Passive Objectives
#define objective tlc.passives.synchrosocial Stores Synchrosocial scores.
scoreboard objectives add tlc.passives.synchrosocial dummy

#define objective tlc.passives.photosynthesis Stores Photosynthesis scores.
scoreboard objectives add tlc.passives.photosynthesis dummy

#define objective tlc.passives.silk_spinner Stores Silk Spinner scores.
scoreboard objectives add tlc.passives.silk_spinner dummy

	# Variables
		## Global Variables
#define score_holder _eoflib.dlc.tlc The load status of this datapack.
execute unless score _eoflib.dlc.tlc eoflib.dlcs = _eoflib.dlc.tlc eoflib.dlcs run scoreboard players set _eoflib.dlc.tlc eoflib.dlcs 1

		## Passive Vars
			### Synchrosocial
#define score_holder #tlc.passives.synchrosocial.1 Sets the minimum player threshold for Synchrosocial 1.
execute unless score #tlc.passives.synchrosocial.1 tlc.passives.synchrosocial = #tlc.passives.synchrosocial.1 tlc.passives.synchrosocial run scoreboard players set #tlc.passives.synchrosocial.1 tlc.passives.synchrosocial 2

#define score_holder #tlc.passives.synchrosocial.2 Sets the minimum player threshold for Synchrosocial 2.
execute unless score #tlc.passives.synchrosocial.2 tlc.passives.synchrosocial = #tlc.passives.synchrosocial.2 tlc.passives.synchrosocial run scoreboard players set #tlc.passives.synchrosocial.2 tlc.passives.synchrosocial 3

#define score_holder #tlc.passives.synchrosocial.3 Sets the minimum player threshold for Synchrosocial 3.
execute unless score #tlc.passives.synchrosocial.3 tlc.passives.synchrosocial = #tlc.passives.synchrosocial.3 tlc.passives.synchrosocial run scoreboard players set #tlc.passives.synchrosocial.3 tlc.passives.synchrosocial 4

#endregion
