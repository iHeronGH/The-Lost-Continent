#> tlc:load/gen/scoreboards/passive_objectives
#
# Initialises passive ability objectives.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/passive_objectives.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/tlc/functions/load/gen/scoreboards/passive_objectives.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/passive_objectives.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/tlc/functions/load/gen/scoreboards/passive_objectives.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/passive_objectives.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/tlc/functions/load/gen/scoreboards/passive_objectives.mcfunction", "color": "aqua"}}}]

    # Passive objectives
#define objective tlc.passives.synchrosocial Stores Synchrosocial scores.
scoreboard objectives add tlc.passives.synchrosocial dummy

#define objective tlc.passives.photosynthesis Stores Photosynthesis scores.
scoreboard objectives add tlc.passives.photosynthesis dummy

#define objective tlc.passives.silk_spinner Stores Silk Spinner scores.
scoreboard objectives add tlc.passives.silk_spinner dummy

#endregion
