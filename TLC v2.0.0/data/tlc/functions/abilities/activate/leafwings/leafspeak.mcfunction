#> tlc:abilities/activate/leafwings/leafspeak
#
# Activate LeafWing ability Leafspeak.
# @credit
#   StargazerWOF: Original function
#   iHeronGH: Optimisations, slight changes

#region
    # Activate Leafspeak
        ## Announce activation
title @s actionbar {"text": "Leafspeak activated!", "color": "green"}

        ## User effects
effect give @s resistance 6 1 true

            ### Randomise Poison Point spawns
summon marker ~ ~ ~ {Tags:["tlc.leafspeak.poison_point"]}
summon marker ~ ~ ~ {Tags:["tlc.leafspeak.poison_point"]}
summon marker ~ ~ ~ {Tags:["tlc.leafspeak.poison_point"]}
spreadplayers ~ ~ 12 7 false @e[sort=nearest, limit=3, type=marker, tag=tlc.leafspeak.poison_point]

            ### Summon Poison Points
execute at @e[sort=nearest, limit=3, type=marker, tag=tlc.leafspeak.poison_point] run summon area_effect_cloud ~ ~ ~ {Particle: "dust 0.37 0.49 0.09 1", Radius: 2.5f, RadiusPerTick: 0, Duration: 16, effects: [{id: "poison", duration: 40, amplifier: 3, show_particles: 0b}, {id: "slowness", duration: 40, amplifier: 1, show_particles: 0b}]}

            ### Kill spawnpoints
tp @e[sort=nearest, limit=3, type=marker, tag=tlc.leafspeak.poison_point] ~ ~-1000 ~
kill @e[sort=nearest, limit=3, type=marker, tag=tlc.leafspeak.poison_point]

        ## Enemy effects
effect give @e[type=!#eoflib:unaffected, predicate=!tlc:tribes/leafwings, distance=..8] slowness 8 1 true

    # Revoke advancement
advancement revoke @s only tlc:abilities/leafwings/leafspeak

#endregion
