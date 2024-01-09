#> tlc:abilities/activate/leafwings/fury_shift/activated
#
# Activate LeafWing ability Fury Shift.

#region
    # Activate Fury Shift
        ## User effects
tellraw @s {"text": "tlc:abilities/activate/leafwings/fury_shift.mcf", "color": "dark_green"}
execute if entity @s[tag=tlc.leafwings.dart_mode] anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].LeafWings[].primary[{eof_data: {ability_data: {mode: "dart"}}}].eof_data
execute unless entity @s[tag=tlc.leafwings.dart_mode] anchored eyes positioned ^ ^-0.4 ^ rotated ~ ~-25 run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].LeafWings[].primary[{eof_data: {ability_data: {mode: "sling"}}}].eof_data

        ## Enemy effects

    # Revoke advancement
advancement revoke @s only tlc:abilities/leafwings/fury_shift/activated

#endregion
