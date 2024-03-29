#> tlc:abilities/activate/hivewings/sting_strike/activated
#
# Activate HiveWing ability Sting Strike.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/activated.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/abilities/activate/hivewings/sting_strike/activated.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/activated.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/abilities/activate/hivewings/sting_strike/activated.mcfunction", "color": "aqua"}}}]

    # Activate Sting Strike
        ## User effects

        ## Enemy effects
execute if entity @s[tag=tlc.hivewings.paralysis_mode, predicate=tlc:tribes/hivewings] run effect give @e[predicate=eoflib:damage/recent] slowness 8 4 true
execute if entity @s[tag=tlc.hivewings.poison_mode, predicate=tlc:tribes/hivewings] run effect give @e[predicate=eoflib:damage/recent] poison 8 3 true
execute if entity @s[predicate=tlc:tribes/hivewings] run effect give @e[predicate=eoflib:damage/recent] weakness 8 1 true

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add tlc.cooldown.active
scoreboard players operation @s tlc.abilities.sting_strike = #tlc.abilities.sting_strike.cooldown tlc.abilities.sting_strike
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

    # Revoke advancement
advancement revoke @s only tlc:abilities/hivewings/sting_strike/activated

#endregion
