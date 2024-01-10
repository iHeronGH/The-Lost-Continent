#> tlc:passives/leafwings/photosynthesis/1/charge
#
# Runs charge functions for the Photosynthesis passive attribute.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:charge.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/passives/leafwings/photosynthesis/1/charge.mcfunction", "color": "aqua"}}}]

    # Increment scores
scoreboard players set @a[tag=tlc.passives.photosynthesis.init, tag=!tlc.passives.photosynthesis.active] tlc.passives.photosynthesis 400

    # Activate Photosynthesis
execute as @a[tag=tlc.passives.photosynthesis.init, tag=!tlc.passives.photosynthesis.active, scores={tlc.passives.photosynthesis=400}] at @s run function tlc:passives/leafwings/photosynthesis/1/activate

#endregion
