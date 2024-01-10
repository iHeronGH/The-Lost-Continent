#> tlc:passives/leafwings/photosynthesis/1/deactivate
#
# Deactivate Photosynthesis due to either a failed charge or successful cooldown.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:deactivate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/passives/leafwings/photosynthesis/1/deactivate.mcfunction", "color": "aqua"}}}]

    # Remove tags
tag @s remove tlc.passives.photosynthesis.init
tag @s remove tlc.passives.photosynthesis.active

    # Reset score
scoreboard players set @s tlc.passives.photosynthesis 0

#endregion
