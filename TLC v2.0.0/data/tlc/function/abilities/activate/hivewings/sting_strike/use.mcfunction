#> tlc:abilities/activate/hivewings/sting_strike/use
#
# Activate HiveWing ability Sting Strike.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/used.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/activate/hivewings/sting_strike/used.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/used.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/activate/hivewings/sting_strike/used.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/used.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/activate/hivewings/sting_strike/used.mcfunction", "color": "aqua"}}}]

    # Activate Sting Strike
tag @s add tlc.hivewings.toggle

    # Toggle Sting Strike mode
execute if entity @s[tag=tlc.hivewings.paralysis_mode, tag=tlc.hivewings.toggle] run function tlc:abilities/activate/hivewings/sting_strike/poison_mode
execute if entity @s[tag=tlc.hivewings.poison_mode, tag=tlc.hivewings.toggle] run function tlc:abilities/activate/hivewings/sting_strike/paralysis_mode

#endregion
