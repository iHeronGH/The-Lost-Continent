#> tlc:load/gen/scoreboards
#
# Generates essential scoreboards for The Lost Continent.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
        ## Passive objectives
function tlc:load/gen/scoreboards/passive_objectives

    # Scoreholders
        ## Global variables
#define score_holder #eoflib.dlc.tlc The load status of this datapack.
scoreboard players set #eoflib.dlc.tlc eoflib.dlcs 1

        ## Passive variables
function tlc:load/gen/scoreboards/passive_variables

#endregion
