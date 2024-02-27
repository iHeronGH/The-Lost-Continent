#> tlc:passives/leafwings/photosynthesis/1/deactivate
#
# Deactivate Photosynthesis due to either a failed charge or successful cooldown.

#region
    # Debug
# execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:1/deactivate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/passives/leafwings/photosynthesis/1/deactivate.mcfunction", "color": "aqua"}}}]
# execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:1/deactivate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/passives/leafwings/photosynthesis/1/deactivate.mcfunction", "color": "aqua"}}}]

    # Remove tags
tag @s remove tlc.passives.photosynthesis.init
tag @s remove tlc.passives.photosynthesis.active

    # Reset score
scoreboard players set @s tlc.passives.photosynthesis 0

#endregion
