#> tlc:passives/silkwings/base
#
# Grants base SilkWing effects.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/passives/silkwings/base.mcfunction", "color": "aqua"}}}]

    # Innate effects
effect give @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings] speed 1 1 true

    # Run Silk Spinner
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/not_full] run function tlc:passives/silkwings/silk_spinner/charge

    # Loop if there are any SilkWings
# execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings] run schedule function tlc:passives/silkwings/base 1t replace

#endregion
