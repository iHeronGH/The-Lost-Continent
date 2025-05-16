#> tlc:effects/entangled/1
#
# 

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:entangled/1.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:effects/entangled/1.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:entangled/1.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:effects/entangled/1.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:entangled/1.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:effects/entangled/1.mcfunction", "color": "aqua"}}}]

    # Run Entangled
        ## Summon Web Trail
execute at @e[tag=tlc.effects.entangled.1, predicate=eoflib:entities/affected] run summon area_effect_cloud ~ ~ ~ {Duration: 200, Tags: ["tlc.entity", "tlc.entity.web_trail"], Particle: "minecraft:dust 0.855 0.816 0.859 1"}

        ## Effect entities
execute at @e[type=area_effect_cloud, tag=tlc.entity.web_trail, distance=..120] run effect give @e[predicate=eoflib:entities/affected, predicate=!tlc:tribes/silkwings, distance=..1.5] slowness 3 1 true
execute at @e[type=area_effect_cloud, tag=tlc.entity.web_trail, distance=..120] run effect give @e[predicate=eoflib:entities/affected, predicate=tlc:tribes/silkwings, distance=..1.5] speed 3 2 true

    # Loop
execute at @e[tag=tlc.effects.entangled.1, predicate=eoflib:entities/affected] run schedule function tlc:effects/entangled/1 1t

#endregion
