#> tlc:abilities/activate/hivewings/hive_mind
#
# Activate HiveWing ability Hive Mind.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/hive_mind.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/activate/hivewings/hive_mind.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/hive_mind.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/activate/hivewings/hive_mind.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:hivewings/hive_mind.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/activate/hivewings/hive_mind.mcfunction", "color": "aqua"}}}]

    # Activate Hive Mind
        ## Announce activation
title @s actionbar {"text": "Hive Mind activated!", "color": "yellow"}

        ## User effects
effect give @s strength 6 1 true
execute if entity @s[predicate=tlc:passives/synchrosocial/1] run effect give @s speed 6 1 true
execute if entity @s[predicate=tlc:passives/synchrosocial/2] run effect give @s speed 6 2 true
execute if entity @s[predicate=tlc:passives/synchrosocial/3] run effect give @a[predicate=tlc:tribes/hivewings, distance=..8] strength 6 2 true

        ## Enemy effects

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add tlc.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] tlc.abilities.hive_mind = #cooldown tlc.abilities.hive_mind
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

#endregion
