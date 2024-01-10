#> tlc:reset/tribe_advancements
#
# Resets the player's advancements for non-occupied tribes.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:tribe_advancements.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/reset/tribe_advancements.mcfunction", "color": "aqua"}}}]

    # Remove other tribe advancements
execute if entity @s[predicate=!tlc:tribes/none] run advancement revoke @s only tlc:none
execute if entity @s[predicate=!tlc:tribes/pantalan] run advancement revoke @s only tlc:pantalan

#endregion
