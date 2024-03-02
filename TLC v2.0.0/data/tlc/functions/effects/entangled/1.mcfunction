#> tlc:effects/entangled/1
#
# 

#region


    # Run Entangled
        ## Summon Web Trail
execute at @e[tag=tlc.effects.entangled.1, predicate=eoflib:entities/affected] run summon area_effect_cloud ~ ~ ~ {Duration: 200, Tags: ["tlc.entity", "tlc.entity.web_trail"], Particle: "minecraft:dust 0.855 0.816 0.859 1"}

        ## Effect entities
execute at @e[type=area_effect_cloud, tag=tlc.entity.web_trail] run effect give @e[predicate=eoflib:entities/affected, predicate=!tlc:tribes/silkwings, distance=..1.5] slowness 3 1 true
execute at @e[type=area_effect_cloud, tag=tlc.entity.web_trail] run effect give @e[predicate=eoflib:entities/affected, predicate=tlc:tribes/silkwings, distance=..1.5] speed 3 2 true

    # Loop
execute if entity @e[tag=tlc.effects.entangled.1, predicate=eoflib:entities/affected] run schedule function tlc:effects/entangled/1 1t

#endregion
