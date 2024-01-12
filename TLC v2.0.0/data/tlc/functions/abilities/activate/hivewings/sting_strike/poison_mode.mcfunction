#> tlc:abilities/activate/hivewings/sting_strike/poison_mode
#
# Switch HiveWing ability Sting Strike to Poison Mode on use.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/poison_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/hivewings/sting_strike/poison_mode.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/poison_mode.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/hivewings/sting_strike/poison_mode.mcfunction", "color": "aqua"}}}]

    # Announce toggle
title @s actionbar [{"text": "Switched to Sting Strike: ", "color": "white"}, {"text": "Poison Strike!", "color": "dark_green"}]

    # Switch to Poison Mode
function tlc:abilities/return/hivewings/sting_strike/poison

    # Remove toggle tag
tag @s remove tlc.hivewings.toggle

#endregion
