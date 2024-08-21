#> tlc:abilities/activate/silkwings/silk_shot
#
# Activate SilkWing ability Silk Shot.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/silk_shot.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:abilities/activate/silkwings/silk_shot.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/silk_shot.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:abilities/activate/silkwings/silk_shot.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silkwings/silk_shot.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:abilities/activate/silkwings/silk_shot.mcfunction", "color": "aqua"}}}]

    # Activate Silk Shot
        ## User effects
            ### Silk Snipe
execute if entity @s[predicate=tlc:passives/silk_spinner/silk_snipe] anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].SilkWings.primary[{eof_data: {ability_data: {mode: "snipe"}}}].eof_data

            ### Silk Burst
execute if entity @s[predicate=tlc:passives/silk_spinner/silk_burst] anchored eyes positioned ^ ^-0.2 ^ facing ^-0.208 ^ ^0.978 rotated ~ ~-15 run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].SilkWings.primary[{eof_data: {ability_data: {mode: "burst"}}}].eof_data
execute if entity @s[predicate=tlc:passives/silk_spinner/silk_burst] anchored eyes positioned ^ ^-0.2 ^ facing ^ ^ ^1 rotated ~ ~-15 run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].SilkWings.primary[{eof_data: {ability_data: {mode: "burst"}}}].eof_data
execute if entity @s[predicate=tlc:passives/silk_spinner/silk_burst] anchored eyes positioned ^ ^-0.2 ^ facing ^0.208 ^ ^0.978 rotated ~ ~-15 run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].SilkWings.primary[{eof_data: {ability_data: {mode: "burst"}}}].eof_data

            ### Decrement Silk Spinner
execute if score @s tlc.passives.silk_spinner < #tlc.passives.silk_spinner.silk_shot_charge_consumption tlc.passives.silk_spinner run scoreboard players set @s tlc.passives.silk_spinner 0
execute if score @s tlc.passives.silk_spinner >= #tlc.passives.silk_spinner.silk_shot_charge_consumption tlc.passives.silk_spinner run scoreboard players operation @s tlc.passives.silk_spinner -= #tlc.passives.silk_spinner.silk_shot_charge_consumption tlc.passives.silk_spinner

        ## Enemy effects

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add tlc.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] tlc.abilities.silk_shot = #tlc.abilities.silk_shot.cooldown tlc.abilities.silk_shot
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

#endregion
