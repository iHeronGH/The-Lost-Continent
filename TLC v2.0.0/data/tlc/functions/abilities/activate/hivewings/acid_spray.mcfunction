#> tlc:abilities/activate/hivewings/acid_spray
#
# Activate HiveWing ability Acid Spray.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/acid_spray.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/hivewings/acid_spray.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/acid_spray.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/hivewings/acid_spray.mcfunction", "color": "aqua"}}}]

    # Activate Acid Spray
        ## Announce activation
title @s actionbar {"text": "Acid Spray activated!", "color": "gold"}

        ## User effects
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].HiveWings[].primary[].eof_data

        ## Enemy effects

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add tlc.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] tlc.abilities.acid_spray = #tlc.abilities.acid_spray.cooldown tlc.abilities.acid_spray
function #eoflib:abilities/cooldowns/main

    # Revoke advancement
advancement revoke @s only tlc:abilities/hivewings/acid_spray

#endregion
