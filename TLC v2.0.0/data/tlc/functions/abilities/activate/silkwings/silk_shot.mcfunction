#> tlc:abilities/activate/silkwings/silk_shot
#
# Activate SilkWing ability Silk Shot.

#region
    # Activate Silk Shot
        ## User effects
tellraw @s {"text": "tlc:abilities/activate/silkwings/silk_shot.mcf", "color": "gray"}
execute if entity @s[predicate=tlc:passives/silk_spinner/silk_snipe] anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].SilkWings[].primary[{eof_data: {ability_data: {mode: "snipe"}}}].eof_data
execute if entity @s[predicate=tlc:passives/silk_spinner/silk_burst] anchored eyes positioned ^ ^-0.2 ^ facing ^-0.208 ^ ^0.978 rotated ~ ~-15 run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].SilkWings[].primary[{eof_data: {ability_data: {mode: "burst"}}}].eof_data
execute if entity @s[predicate=tlc:passives/silk_spinner/silk_burst] anchored eyes positioned ^ ^-0.2 ^ facing ^ ^ ^1 rotated ~ ~-15 run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].SilkWings[].primary[{eof_data: {ability_data: {mode: "burst"}}}].eof_data
execute if entity @s[predicate=tlc:passives/silk_spinner/silk_burst] anchored eyes positioned ^ ^-0.2 ^ facing ^0.208 ^ ^0.978 rotated ~ ~-15 run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].SilkWings[].primary[{eof_data: {ability_data: {mode: "burst"}}}].eof_data

            ### Decrement Silk Spinner
execute if score @s tlc.passives.silk_spinner < #tlc.passives.silk_spinner.silk_shot_charge_consumption tlc.passives.silk_spinner run scoreboard players set @s tlc.passives.silk_spinner 0
execute if score @s tlc.passives.silk_spinner >= #tlc.passives.silk_spinner.silk_shot_charge_consumption tlc.passives.silk_spinner run scoreboard players operation @s tlc.passives.silk_spinner -= #tlc.passives.silk_spinner.silk_shot_charge_consumption tlc.passives.silk_spinner

        ## Enemy effects

    # Revoke advancement
advancement revoke @s only tlc:abilities/silkwings/silk_shot

#endregion
