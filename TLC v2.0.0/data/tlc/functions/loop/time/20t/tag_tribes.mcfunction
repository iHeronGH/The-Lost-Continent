#> tlc:loop/time/20t/tag_tribes
#
# Resolve Pantalan tribe tags for all players.

#region
    # Remove tags
execute if entity @a[predicate=!tlc:tribes/hivewings] run tag @a[predicate=!tlc:tribes/hivewings] remove HiveWing
execute if entity @a[predicate=!tlc:tribes/leafwings] run tag @a[predicate=!tlc:tribes/leafwings] remove LeafWing
execute if entity @a[predicate=!tlc:tribes/silkwings] run tag @a[predicate=!tlc:tribes/silkwings] remove SilkWing

    # Apply tags
execute if entity @a[predicate=tlc:tribes/hivewings] run tag @a[predicate=tlc:tribes/hivewings] add HiveWing
execute if entity @a[predicate=tlc:tribes/leafwings] run tag @a[predicate=tlc:tribes/leafwings] add LeafWing
execute if entity @a[predicate=tlc:tribes/silkwings] run tag @a[predicate=tlc:tribes/silkwings] add SilkWing

#endregion
