#> tlc:abilities/block_effects/main
#
# Determine ability effect to play on ability trigger.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:block_effects/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:abilities/block_effects/main.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:block_effects/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:abilities/block_effects/main.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:block_effects/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:abilities/block_effects/main.mcfunction", "color": "aqua"}}}]

    # Determine ability
execute if data storage eoflib_raycast:ability {ability_data: {name: "acid_spray"}} run function tlc:abilities/block_effects/acid_spray
execute if data storage eoflib_raycast:ability {ability_data: {name: "fury_shift", mode: "dart"}} run function tlc:abilities/block_effects/fury_shift/dart
execute if data storage eoflib_raycast:ability {ability_data: {name: "fury_shift", mode: "sling"}} run function tlc:abilities/block_effects/fury_shift/sling
execute if data storage eoflib_raycast:ability {ability_data: {name: "silk_shot"}} run function tlc:abilities/block_effects/silk_shot

#endregion
