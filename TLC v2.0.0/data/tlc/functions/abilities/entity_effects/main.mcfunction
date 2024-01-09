#> tlc:abilities/entity_effects/main
#
# Determine ability effect to play on ability trigger.

#region
    # Debug
# tellraw @a [{"selector": "@s", "color": "gold"}, {"text": " - ", "color": "gray"}, "tlc:abilities/entity_effects/main.mcf"]

    # Determine ability
execute if data storage eoflib_raycast:ability {ability_data: {name: "acid_spray"}} run function tlc:abilities/entity_effects/acid_spray
execute if data storage eoflib_raycast:ability {ability_data: {name: "fury_shift", mode: "dart"}} run function tlc:abilities/entity_effects/fury_shift/dart
execute if data storage eoflib_raycast:ability {ability_data: {name: "fury_shift", mode: "sling"}} run function tlc:abilities/entity_effects/fury_shift/sling
execute if data storage eoflib_raycast:ability {ability_data: {name: "silk_shot", mode: "snipe"}} run function tlc:abilities/entity_effects/silk_shot/snipe
execute if data storage eoflib_raycast:ability {ability_data: {name: "silk_shot", mode: "burst"}} run function tlc:abilities/entity_effects/silk_shot/burst

#endregion
