#> tlc:abilities/activate/leafwings/fury_shift/used
#
# Activate LeafWing ability Fury Shift.

#region
    # Debug
tellraw @s {"text": "tlc:abilities/activate/leafwings/fury_shift/used", "color": "white"}

    # Activate Sting Strike
tag @s add tlc.leafwings.toggle

    # Toggle Sting Strike mode
execute if entity @s[tag=tlc.leafwings.dart_mode, tag=tlc.leafwings.toggle] run function tlc:abilities/activate/leafwings/fury_shift/sling_mode
execute if entity @s[tag=tlc.leafwings.sling_mode, tag=tlc.leafwings.toggle] run function tlc:abilities/activate/leafwings/fury_shift/dart_mode

    # Revoke advancement
advancement revoke @s only tlc:abilities/leafwings/fury_shift/used

#endregion
