#> tlc:abilities/cooldowns/leafwings/leafspeak
#
# Run cooldown functions for the LeafWing ability Leafspeak.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/leafspeak.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:abilities/cooldowns/leafwings/leafspeak.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/leafspeak.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:abilities/cooldowns/leafwings/leafspeak.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/leafspeak.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:abilities/cooldowns/leafwings/leafspeak.mcfunction", "color": "aqua"}}}]

    # Decrement cooldown
scoreboard players operation @a[tag=tlc.cooldown.active, predicate=tlc:tribes/leafwings, predicate=tlc:abilities/cooldowns/leafwings/leafspeak] tlc.abilities.leafspeak -= #eoflib.1 eoflib.numbers
title @a[tag=tlc.cooldown.active, predicate=tlc:tribes/leafwings, predicate=!tlc:abilities/cooldowns/leafwings/leafspeak] actionbar {"text": "Leafspeak off cooldown!", "color": "green"}

#endregion
