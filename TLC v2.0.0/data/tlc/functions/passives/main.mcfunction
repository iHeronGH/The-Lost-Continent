#> tlc:passives/main
#
# Applies effects to players with their effects toggled on.

#region
    # Clear other advancements
function #eoflib:reset/tribe_advancements

    # Clear other cooldowns
function #eoflib:reset/cooldowns

    # Determine effects based on tribe
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/hivewings] run function tlc:passives/hivewings/base
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings] run function tlc:passives/leafwings/base
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings] run function tlc:passives/silkwings/base

    # Loop if there are other Pantalan tribes
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/pantalan] run schedule function tlc:passives/main 1t replace

#endregion
