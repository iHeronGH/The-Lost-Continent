#> tlc:abilities/block_effects/fury_shift/sling
#
# Activate Fury Shift effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/sling.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:abilities/block_effects/fury_shift/sling.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/sling.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:abilities/block_effects/fury_shift/sling.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:fury_shift/sling.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:abilities/block_effects/fury_shift/sling.mcfunction", "color": "aqua"}}}]

    # Enemy effects
execute positioned ^ ^ ^-0.4 run particle dust_color_transition 0.3 0.2 0.1 2 0 0 0 ~ ~ ~ 0.4 0.1 0.4 0.03 45
summon area_effect_cloud ~ ~ ~ {Tags: ["tlc.leafwings.fury_shift.sap_pool"], Duration: 100, Radius: 3, Particle: "dust_color_transition 0.3 0.2 0.1 2 0 0 0", effects: [{id: "minecraft:weakness", amplifier: 0, duration: 40, show_particles: false}, {id: "minecraft:slowness", amplifier: 1, duration: 40, show_particles: false}]}

#endregion
