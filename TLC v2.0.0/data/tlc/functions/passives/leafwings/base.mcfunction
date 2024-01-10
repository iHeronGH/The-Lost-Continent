#> tlc:passives/leafwings/base
#
# Grants base LeafWing effects.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/passives/leafwings/base.mcfunction", "color": "aqua"}}}]

    # Innate effects
effect give @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings] strength 1 0 true
effect give @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings] speed 1 0 true

    # Check for Photosynthesis effects
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings, predicate=tlc:passives/photosynthesis/1] run function tlc:passives/leafwings/photosynthesis/init

    # Loop if there are any LeafWings
# execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings] run schedule function tlc:passives/leafwings/base 1t replace

#endregion
