#> tlc:reset/cooldowns
#
# Reset cooldowns for passives and abilities when a user changes tribes.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:reset/cooldowns.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/reset/cooldowns.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:reset/cooldowns.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/reset/cooldowns.mcfunction", "color": "aqua"}}}]

    # Remove other tribe cooldowns
execute if entity @a[predicate=!tlc:tribes/hivewings] run function tlc:reset/cooldowns/hivewings
execute if entity @a[predicate=!tlc:tribes/leafwings] run function tlc:reset/cooldowns/leafwings
execute if entity @a[predicate=!tlc:tribes/silkwings] run function tlc:reset/cooldowns/silkwings

#endregion
