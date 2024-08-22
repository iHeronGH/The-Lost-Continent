#> tlc:reset/cooldowns/other
#
# Reset cooldowns for passives and abilities when a user changes tribes.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:cooldowns/other.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:reset/cooldowns/other.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:cooldowns/other.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:reset/cooldowns/other.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:cooldowns/other.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:reset/cooldowns/other.mcfunction", "color": "aqua"}}}]

    # Remove other tribe cooldowns
execute if entity @a[predicate=tlc:abilities/cooldowns/hivewings, predicate=!tlc:tribes/hivewings] run function tlc:reset/cooldowns/other/hivewings
execute if entity @a[predicate=tlc:abilities/cooldowns/leafwings, predicate=!tlc:tribes/leafwings] run function tlc:reset/cooldowns/other/leafwings
execute if entity @a[predicate=tlc:abilities/cooldowns/silkwings, predicate=!tlc:tribes/silkwings] run function tlc:reset/cooldowns/other/silkwings

#endregion
