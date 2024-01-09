#> tlc:abilities/activate/leafwings/fury_shift/sling_mode
#
# Switch LeafWing ability Fury Shift to Sling Mode on use.

#region
    # Debug
title @s actionbar [{"text": "Switched to Fury Shift: ", "color": "dark_green"}, {"text": "Sap Sling!", "color": "#82480d"}]

    # Switch to Sling Mode
function tlc:abilities/return/leafwings/fury_shift/sling

    # Remove toggle tag
tag @s remove tlc.leafwings.toggle

#endregion
