#> tlc:passives/leafwings/base
#
# Grants base LeafWing effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/base.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:passives/leafwings/base.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/base.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:passives/leafwings/base.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/base.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:passives/leafwings/base.mcfunction", "color": "aqua"}}}]

    # Innate effects
effect give @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings] strength 1 0 true
effect give @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings] speed 1 0 true

    # Check for Photosynthesis effects
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings, predicate=tlc:passives/photosynthesis/1, tag=!tlc.passives.photosynthesis.init] run function tlc:passives/leafwings/photosynthesis/init

    # Loop if there are LeafWings
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings] run schedule function tlc:passives/leafwings/base 1t replace

#endregion
