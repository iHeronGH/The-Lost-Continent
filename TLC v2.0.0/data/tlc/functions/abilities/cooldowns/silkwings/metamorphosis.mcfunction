#> tlc:abilities/cooldowns/silkwings/metamorphosis
#
# Run cooldown functions for the SilkWing ability Metamorphosis.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/metamorphosis.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:abilities/cooldowns/silkwings/metamorphosis.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/metamorphosis.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:abilities/cooldowns/silkwings/metamorphosis.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/metamorphosis.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:abilities/cooldowns/silkwings/metamorphosis.mcfunction", "color": "aqua"}}}]

    # Decrement cooldown
scoreboard players operation @a[tag=tlc.cooldown.active, predicate=tlc:tribes/silkwings, predicate=tlc:abilities/cooldowns/silkwings/metamorphosis] tlc.abilities.metamorphosis -= #eoflib.1 eoflib.numbers
title @a[tag=tlc.cooldown.active, predicate=tlc:tribes/silkwings, predicate=!tlc:abilities/cooldowns/silkwings/metamorphosis] actionbar {"text": "Silk Shot off cooldown!", "color": "gray"}

#endregion
