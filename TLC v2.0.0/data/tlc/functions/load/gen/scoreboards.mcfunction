#> tlc:load/gen/scoreboards
#
# Generates essential scoreboards for The Lost Continent.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:gen/scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:gen/scoreboards.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/gen/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
        ## Ability objectives
function tlc:load/gen/scoreboards/ability_objectives

        ## Passive objectives
function tlc:load/gen/scoreboards/passive_objectives

    # Scoreholders
        ## Global variables
#define score_holder #eoflib.dlc.tlc The load status of this datapack.
scoreboard players set #eoflib.dlc.tlc eoflib.dlcs 1

        ## Ability variables
function tlc:load/gen/scoreboards/ability_variables

        ## Passive variables
function tlc:load/gen/scoreboards/passive_variables

#endregion
