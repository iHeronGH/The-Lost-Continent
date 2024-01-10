#> tlc:abilities/activate/hivewings/sting_strike/used
#
# Activate HiveWing ability Sting Strike.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:used.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/hivewings/sting_strike/used.mcfunction", "color": "aqua"}}}]

    # Activate Sting Strike
tag @s add tlc.hivewings.toggle

    # Toggle Sting Strike mode
execute if entity @s[tag=tlc.hivewings.paralysis_mode, tag=tlc.hivewings.toggle] run function tlc:abilities/activate/hivewings/sting_strike/poison_mode
execute if entity @s[tag=tlc.hivewings.poison_mode, tag=tlc.hivewings.toggle] run function tlc:abilities/activate/hivewings/sting_strike/paralysis_mode

    # Revoke advancement
advancement revoke @s only tlc:abilities/hivewings/sting_strike/used

#endregion
