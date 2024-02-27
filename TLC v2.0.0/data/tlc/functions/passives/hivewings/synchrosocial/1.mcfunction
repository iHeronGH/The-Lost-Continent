#> tlc:passives/hivewings/synchrosocial/1
#
# Grant effects based on the HiveWing passive ability Synchrosocial.

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:synchrosocial/1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/passives/hivewings/synchrosocial/1.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:synchrosocial/1.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/passives/hivewings/synchrosocial/1.mcfunction", "color": "aqua"}}}]

    # Grant effects
effect give @a[tag=eoflib.atts, predicate=tlc:tribes/hivewings, predicate=tlc:passives/synchrosocial/1] speed 1 0 true

#endregion
