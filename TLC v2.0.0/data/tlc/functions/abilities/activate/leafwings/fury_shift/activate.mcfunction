#> tlc:abilities/activate/leafwings/fury_shift/activate
#
# Activate LeafWing ability Fury Shift.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/activated.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/abilities/activate/leafwings/fury_shift/activated.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/activated.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/abilities/activate/leafwings/fury_shift/activated.mcfunction", "color": "aqua"}}}]

    # Activate Fury Shift
        ## Announce activation
title @s actionbar {"text": "Fury Shift activated!", "color": "dark_green"}

        ## User effects
execute if entity @s[tag=tlc.leafwings.dart_mode] anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].LeafWings[].primary[{eof_data: {ability_data: {mode: "dart"}}}].eof_data
execute unless entity @s[tag=tlc.leafwings.dart_mode] anchored eyes positioned ^ ^-0.4 ^ rotated ~ ~-25 run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].LeafWings[].primary[{eof_data: {ability_data: {mode: "sling"}}}].eof_data

        ## Enemy effects

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add tlc.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] tlc.abilities.fury_shift = #tlc.abilities.fury_shift.cooldown tlc.abilities.fury_shift
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

    # Revoke advancement
advancement revoke @s only tlc:abilities/leafwings/fury_shift/activate

#endregion
