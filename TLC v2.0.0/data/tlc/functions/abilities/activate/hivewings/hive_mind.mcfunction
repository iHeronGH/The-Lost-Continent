#> tlc:abilities/activate/hivewings/hive_mind
#
# Activate HiveWing ability Hive Mind.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:hive_mind.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/hivewings/hive_mind.mcfunction", "color": "aqua"}}}]

    # Activate Hive Mind
        ## Announce activation
title @s actionbar {"text": "Hive Mind activated!", "color": "yellow"}

        ## User effects
effect give @s strength 6 1 true
execute if entity @s[predicate=tlc:passives/synchrosocial/1] run effect give @s speed 6 1 true
execute unless entity @s[predicate=!tlc:passives/synchrosocial/2] unless entity @s[predicate=!tlc:passives/synchrosocial/2] run effect give @s speed 6 2 true
execute if entity @s[predicate=tlc:passives/synchrosocial/3] run effect give @a[predicate=tlc:tribes/hivewings, distance=..8] strength 6 1 true

        ## Enemy effects

    # Revoke advancement
advancement revoke @s only tlc:abilities/hivewings/hive_mind

#endregion