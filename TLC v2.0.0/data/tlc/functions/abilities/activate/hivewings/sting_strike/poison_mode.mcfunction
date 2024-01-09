#> tlc:abilities/activate/hivewings/sting_strike/poison_mode
#
# Switch HiveWing ability Sting Strike to Poison Mode on use.

#region
    # Debug
title @s actionbar [{"text": "Switched to Sting Strike: ", "color": "white"}, {"text": "Poison Strike!", "color": "dark_green"}]

    # Switch to Poison Mode
function tlc:abilities/return/hivewings/sting_strike/poison

    # Remove toggle tag
tag @s remove tlc.hivewings.toggle

#endregion
