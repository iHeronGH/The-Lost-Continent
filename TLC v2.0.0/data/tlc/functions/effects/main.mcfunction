#> tlc:effects/main
#
# Applies effects to players with their effects toggled on.

#region
    # Clear other advancements
function #eoflib:reset/tribe_advancements

    # Clear other cooldowns
function #eoflib:reset/cooldowns

    # Determine effects based on tribe
execute if entity @s[tag=eoflib.atts, predicate=tlc:tribes/hivewings] run function tlc:effects/hivewings/base
execute if entity @s[tag=eoflib.atts, predicate=tlc:tribes/leafwings] run function tlc:effects/leafwings/base
execute if entity @s[tag=eoflib.atts, predicate=tlc:tribes/silkwings] run function tlc:effects/silkwings/base

    # Loop if there are other Pantalan tribes
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/pantalan] run schedule function tlc:effects/main 1t replace

#endregion
