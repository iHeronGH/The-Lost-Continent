#> tlc:abilities/activate/leafwings/leafspeak
#
# Activate LeafWing ability Leafspeak.
# @credit
#   StargazerWOF: Original function
#   iHeronGH: Optimisations, slight changes

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/leafspeak.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:abilities/activate/leafwings/leafspeak.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/leafspeak.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:abilities/activate/leafwings/leafspeak.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/leafspeak.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:abilities/activate/leafwings/leafspeak.mcfunction", "color": "aqua"}}}]

    # Activate Leafspeak
        ## Announce activation
title @s actionbar {"text": "Leafspeak activated!", "color": "green"}

        ## User effects
effect give @s resistance 8 0 true

            ### Randomise Poison Point spawns
summon marker ~ ~ ~ {Tags: ["tlc.leafspeak.poison_point"]}
summon marker ~ ~ ~ {Tags: ["tlc.leafspeak.poison_point"]}
summon marker ~ ~ ~ {Tags: ["tlc.leafspeak.poison_point"]}
spreadplayers ~ ~ 12 7 false @e[sort=nearest, limit=3, type=marker, tag=tlc.leafspeak.poison_point]

            ### Summon Poison Points
execute at @e[sort=nearest, limit=3, type=marker, tag=tlc.leafspeak.poison_point] run summon area_effect_cloud ~ ~ ~ {Particle: "dust 0.37 0.49 0.09 1", Radius: 3f, RadiusPerTick: 0, Duration: 160, effects: [{id: "minecraft:poison", duration: 40, amplifier: 3, show_particles: 0b}, {id: "minecraft:slowness", duration: 40, amplifier: 1, show_particles: 0b}]}

            ### Kill spawnpoints
kill @e[sort=nearest, limit=3, type=marker, tag=tlc.leafspeak.poison_point]

        ## Enemy effects
effect give @e[predicate=eoflib:entities/affected, predicate=!tlc:tribes/leafwings, distance=..8] slowness 8 1 true

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add tlc.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] tlc.abilities.leafspeak = #tlc.abilities.leafspeak.cooldown tlc.abilities.leafspeak
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

#endregion
