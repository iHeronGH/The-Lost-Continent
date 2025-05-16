#> tlc:abilities/activate/leafwings/fury_shift/activate
#
# Activate LeafWing ability Fury Shift.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/activate/leafwings/fury_shift/activate.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/activate.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/activate/leafwings/fury_shift/activate.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/activate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/activate/leafwings/fury_shift/activate.mcfunction", "color": "aqua"}}}]

    # Activate Fury Shift
        ## Announce activation
title @s actionbar {"text": "Fury Shift activated!", "color": "dark_green"}

        ## User effects
execute if entity @s[tag=tlc.leafwings.dart_mode] anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].LeafWings.primary[{"eof_data": {"ability_data": {mode: "dart"}}}].eof_data
execute unless entity @s[tag=tlc.leafwings.dart_mode] anchored eyes positioned ^ ^-0.4 ^ rotated ~ ~-25 run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].LeafWings.primary[{"eof_data": {"ability_data": {mode: "sling"}}}].eof_data

        ## Enemy effects

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add tlc.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] tlc.abilities.fury_shift = #cooldown tlc.abilities.fury_shift
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

#endregion
