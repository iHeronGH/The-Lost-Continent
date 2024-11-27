#> tlc:passives/leafwings/photosynthesis/init
#
# Initialise Photosynthesis charging.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:photosynthesis/init.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:passives/leafwings/photosynthesis/init.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:photosynthesis/init.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:passives/leafwings/photosynthesis/init.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:photosynthesis/init.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:passives/leafwings/photosynthesis/init.mcfunction", "color": "aqua"}}}]

    # Add tags
tag @a[tag=eoflib.atts, tag=!tlc.passives.photosynthesis.init, tag=!tlc.passives.photosynthesis.active, predicate=tlc:tribes/leafwings, predicate=tlc:passives/photosynthesis/1] add tlc.passives.photosynthesis.init

    # Charge
function tlc:passives/leafwings/photosynthesis/1/charge

#endregion
