#> tlc:abilities/activate/leafwings/fury_shift/sling_mode
#
# Switch LeafWing ability Fury Shift to Sling Mode on use.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/sling_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/leafwings/fury_shift/sling_mode.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/sling_mode.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/leafwings/fury_shift/sling_mode.mcfunction", "color": "aqua"}}}]

    # Announce toggle
title @s actionbar [{"text": "Switched to Fury Shift: ", "color": "dark_green"}, {"text": "Sap Sling!", "color": "#82480d"}]

    # Switch to Sling Mode
function tlc:abilities/return/leafwings/fury_shift/sling

    # Remove toggle tag
tag @s remove tlc.leafwings.toggle

#endregion
