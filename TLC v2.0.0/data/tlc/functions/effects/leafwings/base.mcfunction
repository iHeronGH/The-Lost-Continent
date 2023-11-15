#> tlc:effects/leafwings/base
#
# Grants base LeafWing effects.

#region
    # Innate effects
effect give @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings] strength 1 0 true
effect give @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings] speed 1 0 true

    # Check for Photosynthesis effects
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings, predicate=tlc:passives/photosynthesis/1] run function tlc:effects/leafwings/photosynthesis/init

    # Loop if there are any LeafWings
# execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings] run schedule function tlc:effects/leafwings/base 1t replace

#endregion
