#> tlc:abilities/return/main
#
# Grant player all corresponding tribe abilities.

#region
    # Debug
tellraw @s "tlc:abilities/return/main"

    # Return abilities
execute if entity @s[predicate=tlc:tribes/hivewings] run function tlc:abilities/return/hivewings/all
execute if entity @s[predicate=tlc:tribes/leafwings] run function tlc:abilities/return/leafwings/all
execute if entity @s[predicate=tlc:tribes/silkwings] run function tlc:abilities/return/silkwings/all

#endregion
