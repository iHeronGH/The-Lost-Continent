#> tlc:abilities/cooldowns/silkwings/all
#
# Run cooldown functions for all SilkWing abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/all.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/cooldowns/silkwings/all.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/all.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/cooldowns/silkwings/all.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/all.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/cooldowns/silkwings/all.mcfunction", "color": "aqua"}}}]

    # Run ability cooldowns
execute if entity @a[tag=tlc.cooldown.active, predicate=tlc:tribes/silkwings, predicate=tlc:abilities/cooldowns/silkwings/silk_shot] run function tlc:abilities/cooldowns/silkwings/silk_shot
execute if entity @a[tag=tlc.cooldown.active, predicate=tlc:tribes/silkwings, predicate=tlc:abilities/cooldowns/silkwings/metamorphosis] run function tlc:abilities/cooldowns/silkwings/metamorphosis
execute if entity @a[tag=tlc.cooldown.active, predicate=tlc:tribes/silkwings, predicate=tlc:abilities/cooldowns/silkwings/webbing] run function tlc:abilities/cooldowns/silkwings/webbing

#endregion
