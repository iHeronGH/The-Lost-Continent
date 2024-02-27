#> tlc:abilities/return/main
#
# Grant player all corresponding tribe abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:return/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/abilities/return/main.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:return/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/abilities/return/main.mcfunction", "color": "aqua"}}}]

    # Return abilities
execute if entity @s[predicate=tlc:tribes/hivewings] run function tlc:abilities/return/hivewings/all
execute if entity @s[predicate=tlc:tribes/leafwings] run function tlc:abilities/return/leafwings/all
execute if entity @s[predicate=tlc:tribes/silkwings] run function tlc:abilities/return/silkwings/all

#endregion
