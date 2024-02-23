#> tlc:reset/tribe_advancements
#
# Resets the player's advancements for non-occupied tribes.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:reset/tribe_advancements.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/reset/tribe_advancements.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:reset/tribe_advancements.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/reset/tribe_advancements.mcfunction", "color": "aqua"}}}]

    # Remove other tribe advancements
execute if entity @s[predicate=!tlc:tribes/none] run advancement revoke @s only tlc:none
execute if entity @s[predicate=!tlc:tribes/pantalan] run advancement revoke @s only tlc:pantalan

#endregion
