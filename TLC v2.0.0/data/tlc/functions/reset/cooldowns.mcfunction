#> tlc:reset/cooldowns
#
# Reset cooldowns for passives and abilities when a user changes tribes.

#region
    # Remove other tribe cooldowns
execute if entity @a[predicate=!tlc:tribes/hivewings] run function tlc:reset/cooldowns/hivewings
execute if entity @a[predicate=!tlc:tribes/leafwings] run function tlc:reset/cooldowns/leafwings
execute if entity @a[predicate=!tlc:tribes/silkwings] run function tlc:reset/cooldowns/silkwings

#endregion
