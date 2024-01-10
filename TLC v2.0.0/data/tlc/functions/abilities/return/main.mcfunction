#> tlc:abilities/return/main
#
# Grant player all corresponding tribe abilities.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/main.mcfunction", "color": "aqua"}}}]

    # Return abilities
execute if entity @s[predicate=tlc:tribes/hivewings] run function tlc:abilities/return/hivewings/all
execute if entity @s[predicate=tlc:tribes/leafwings] run function tlc:abilities/return/leafwings/all
execute if entity @s[predicate=tlc:tribes/silkwings] run function tlc:abilities/return/silkwings/all

#endregion
