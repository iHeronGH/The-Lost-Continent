#> tlc:abilities/return/leafwings/fury_shift/sling
#
# Grant the player the LeafWing ability Fury Shift, Sling mode.

#region
    # Give Fury Shift
loot replace entity @s hotbar.6 loot tlc:commands/ability/leafwings/fury_shift/sling

    # Correct tags
tag @s add tlc.leafwings.sling_mode
tag @s remove tlc.leafwings.dart_mode

#endregion
