#> tlc:abilities/activate/hivewings/sting_strike/paralysis_mode
#
# Switch HiveWing ability Sting Strike to Paralysis Mode on use.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:paralysis_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/hivewings/sting_strike/paralysis_mode.mcfunction", "color": "aqua"}}}]

    # Announce toggle
title @s actionbar [{"text": "Switched to Sting Strike: ", "color": "white"}, {"text": "Paralysis Strike!", "color": "yellow"}]

    # Switch to Paralysis Mode
function tlc:abilities/return/hivewings/sting_strike/paralysis

    # Remove toggle tag
tag @s remove tlc.hivewings.toggle

#endregion
