#> tlc:abilities/block_effects/main
#
# Determine ability effect to play on ability trigger.

#region
    # Determine ability
execute if data storage eoflib_raycast:ability {ability_data: {name: "acid_spray"}} run function tlc:abilities/block_effects/acid_spray
execute if data storage eoflib_raycast:ability {ability_data: {name: "fury_shift", mode: "dart"}} run function tlc:abilities/block_effects/fury_shift/dart
execute if data storage eoflib_raycast:ability {ability_data: {name: "fury_shift", mode: "sling"}} run function tlc:abilities/block_effects/fury_shift/sling
execute if data storage eoflib_raycast:ability {ability_data: {name: "silk_shot"}} run function tlc:abilities/block_effects/silk_shot

#endregion
