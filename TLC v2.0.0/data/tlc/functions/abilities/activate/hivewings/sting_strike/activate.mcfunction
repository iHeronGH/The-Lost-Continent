#> tlc:abilities/activate/hivewings/sting_strike/activate
#
# Activate HiveWing ability Sting Strike.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:abilities/activate/hivewings/sting_strike/activate.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:abilities/activate/hivewings/sting_strike/activate.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/activate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:abilities/activate/hivewings/sting_strike/activate.mcfunction", "color": "aqua"}}}]

    # Activate Sting Strike
        ## User effects

        ## Enemy effects
execute if entity @s[tag=tlc.hivewings.paralysis_mode, predicate=tlc:tribes/hivewings] run effect give @e[sort=nearest, limit=1, predicate=eoflib:damage/recent, distance=0.1..10] slowness 8 4 true
execute if entity @s[tag=tlc.hivewings.poison_mode, predicate=tlc:tribes/hivewings] run effect give @e[sort=nearest, limit=1, predicate=eoflib:damage/recent, distance=0.1..10] poison 8 3 true
execute if entity @s[predicate=tlc:tribes/hivewings] run effect give @e[sort=nearest, limit=1, predicate=eoflib:damage/recent, distance=0.1..10] weakness 8 1 true

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add tlc.cooldown.active
scoreboard players operation @s tlc.abilities.sting_strike = #tlc.abilities.sting_strike.cooldown tlc.abilities.sting_strike
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

#endregion
