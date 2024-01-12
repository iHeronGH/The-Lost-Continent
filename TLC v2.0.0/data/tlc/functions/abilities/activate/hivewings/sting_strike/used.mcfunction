#> tlc:abilities/activate/hivewings/sting_strike/used
#
# Activate HiveWing ability Sting Strike.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/used.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/hivewings/sting_strike/used.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:sting_strike/used.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/hivewings/sting_strike/used.mcfunction", "color": "aqua"}}}]

    # Activate Sting Strike
tag @s add tlc.hivewings.toggle

    # Toggle Sting Strike mode
execute if entity @s[tag=tlc.hivewings.paralysis_mode, tag=tlc.hivewings.toggle] run function tlc:abilities/activate/hivewings/sting_strike/poison_mode
execute if entity @s[tag=tlc.hivewings.poison_mode, tag=tlc.hivewings.toggle] run function tlc:abilities/activate/hivewings/sting_strike/paralysis_mode

    # Revoke advancement
advancement revoke @s only tlc:abilities/hivewings/sting_strike/used

#endregion
