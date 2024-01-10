#> tlc:passives/hivewings/synchrosocial/1
#
# Grant effects based on the HiveWing passive ability Synchrosocial.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/passives/hivewings/synchrosocial/1.mcfunction", "color": "aqua"}}}]

    # Grant effects
effect give @a[tag=eoflib.atts, predicate=tlc:tribes/hivewings, predicate=tlc:passives/synchrosocial/1] speed 1 0 true

#endregion
