#> tlc:passives/hivewings/base
#
# Grants base HiveWing effects.

#region
    # Innate effects
effect give @a[tag=eoflib.atts, predicate=tlc:tribes/hivewings] strength 1 1 true

    # Check for Synchrosocial effects
execute as @a[predicate=tlc:tribes/hivewings] at @s store result score @s tlc.passives.synchrosocial run execute if entity @a[predicate=tlc:tribes/hivewings, distance=0.1..8]
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/hivewings, predicate=tlc:passives/synchrosocial/1] run function tlc:passivesss/hivewings/synchrosocial/1
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/hivewings, predicate=tlc:passives/synchrosocial/2] run function tlc:passives/hivewings/synchrosocial/2
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/hivewings, predicate=tlc:passives/synchrosocial/3] run function tlc:passives/hivewings/synchrosocial/3

    # Loop if there are any HiveWings
# execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/hivewings] run schedule function tlc:passives/hivewings/base 1t replace

#endregion
