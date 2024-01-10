#> tlc:passives/main
#
# Applies effects to players with their effects toggled on.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/passives/main.mcfunction", "color": "aqua"}}}]

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
