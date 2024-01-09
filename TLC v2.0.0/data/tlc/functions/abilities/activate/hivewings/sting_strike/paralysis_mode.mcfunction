#> tlc:abilities/activate/hivewings/sting_strike/paralysis_mode
#
# Switch HiveWing ability Sting Strike to Paralysis Mode on use.

#region
    # Debug
title @s actionbar [{"text": "Switched to Sting Strike: ", "color": "white"}, {"text": "Paralysis Strike!", "color": "yellow"}]

    # Switch to Paralysis Mode
function tlc:abilities/return/hivewings/sting_strike/paralysis

    # Remove toggle tag
tag @s remove tlc.hivewings.toggle

#endregion
