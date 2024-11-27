#> tlc:abilities/cooldowns/silkwings/silk_shot
#
# Run cooldown functions for the SilkWing ability Silk Shot.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/silk_shot.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/cooldowns/silkwings/silk_shot.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/silk_shot.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/cooldowns/silkwings/silk_shot.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/silk_shot.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/cooldowns/silkwings/silk_shot.mcfunction", "color": "aqua"}}}]

    # Decrement cooldown
scoreboard players operation @a[tag=tlc.cooldown.active, predicate=tlc:tribes/silkwings, predicate=tlc:abilities/cooldowns/silkwings/silk_shot] tlc.abilities.silk_shot -= #eoflib.1 eoflib.numbers
title @a[tag=tlc.cooldown.active, predicate=tlc:tribes/silkwings, predicate=!tlc:abilities/cooldowns/silkwings/silk_shot] actionbar {"text": "Silk Shot off cooldown!", "color": "gray"}

#endregion
