#> tlc:abilities/activate/leafwings/fury_shift/dart_mode
#
# Switch LeafWing ability Sting Strike to Dart Mode on use.

#region
    # Debug
title @s actionbar [{"text": "Switched to Fury Shift: ", "color": "dark_green"}, {"text": "Poison Dart!", "color": "green"}]

    # Switch to Dart Mode
function tlc:abilities/return/leafwings/fury_shift/dart

    # Remove toggle tag
tag @s remove tlc.leafwings.toggle

#endregion
