#> tlc:passives/leafwings/photosynthesis/init
#
# Initialise Photosynthesis charging.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:init.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/passives/leafwings/photosynthesis/init.mcfunction", "color": "aqua"}}}]

    # Add tags
tag @a[tag=eoflib.atts, tag=!tlc.passives.photosynthesis.init, tag=!tlc.passives.photosynthesis.active, predicate=tlc:tribes/leafwings, predicate=tlc:passives/photosynthesis/1] add tlc.passives.photosynthesis.init

    # Charge
function tlc:passives/leafwings/photosynthesis/1/charge

#endregion
