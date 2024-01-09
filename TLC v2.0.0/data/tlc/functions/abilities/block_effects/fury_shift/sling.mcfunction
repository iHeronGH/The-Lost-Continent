#> tlc:abilities/block_effects/fury_shift/sling
#
# Activate Fury Shift effects.

#region
    # Enemy effects
execute positioned ^ ^ ^-0.4 run particle dust_color_transition 0.3 0.2 0.1 2 0 0 0 ~ ~ ~ 0.4 0.1 0.4 0.03 45
summon area_effect_cloud ~ ~ ~ {Tags: ["tlc.leafwings.fury_shift.sap_pool"], Duration: 100, Radius: 3, Particle: "dust_color_transition 0.3 0.2 0.1 2 0 0 0", effects: [{id: "minecraft:weakness", amplifier: 0, duration: 40, show_particles: false}, {id: "minecraft:slowness", amplifier: 1, duration: 40, show_particles: false}]}

#endregion
