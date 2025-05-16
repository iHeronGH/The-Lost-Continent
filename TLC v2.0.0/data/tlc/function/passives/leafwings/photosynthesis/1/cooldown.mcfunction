#> tlc:passives/leafwings/photosynthesis/1/cooldown
#
# Loops the cooldown for the passive ability Photosynthesis.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:1/cooldown.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:passives/leafwings/photosynthesis/1/cooldown.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:1/cooldown.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:passives/leafwings/photosynthesis/1/cooldown.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:1/cooldown.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:passives/leafwings/photosynthesis/1/cooldown.mcfunction", "color": "aqua"}}}]

    # Decrement score
scoreboard players remove @a[tag=tlc.passives.photosynthesis.active, scores={tlc.passives.photosynthesis=1..}] tlc.passives.photosynthesis 1

    # Reset
execute if entity @a[tag=tlc.passives.photosynthesis.active, scores={tlc.passives.photosynthesis=0}] as @a[tag=tlc.passives.photosynthesis.active, scores={tlc.passives.photosynthesis=0}] run function tlc:passives/leafwings/photosynthesis/1/deactivate

    # Loop
execute if entity @a[tag=tlc.passives.photosynthesis.active, scores={tlc.passives.photosynthesis=1..}] run schedule function tlc:passives/leafwings/photosynthesis/1/cooldown 1t

#endregion
