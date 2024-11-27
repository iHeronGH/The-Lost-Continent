#> tlc:passives/leafwings/photosynthesis/1/charge
#
# Runs charge functions for the Photosynthesis passive attribute.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:1/charge.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:passives/leafwings/photosynthesis/1/charge.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:1/charge.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:passives/leafwings/photosynthesis/1/charge.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:1/charge.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:passives/leafwings/photosynthesis/1/charge.mcfunction", "color": "aqua"}}}]

    # Increment scores
scoreboard players set @a[tag=tlc.passives.photosynthesis.init, tag=!tlc.passives.photosynthesis.active] tlc.passives.photosynthesis 400

    # Activate Photosynthesis
execute as @a[tag=tlc.passives.photosynthesis.init, tag=!tlc.passives.photosynthesis.active, scores={tlc.passives.photosynthesis=400}] at @s run function tlc:passives/leafwings/photosynthesis/1/activate

#endregion
