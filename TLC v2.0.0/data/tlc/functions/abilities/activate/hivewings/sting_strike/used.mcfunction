#> tlc:abilities/activate/hivewings/sting_strike/used
#
# Activate HiveWing ability Sting Strike.

#region
    # Debug
tellraw @s {"text": "tlc:abilities/activate/hivewings/sting_strike/used", "color": "white"}

    # Activate Sting Strike
tag @s add tlc.hivewings.toggle

    # Toggle Sting Strike mode
execute if entity @s[tag=tlc.hivewings.paralysis_mode, tag=tlc.hivewings.toggle] run function tlc:abilities/activate/hivewings/sting_strike/poison_mode
execute if entity @s[tag=tlc.hivewings.poison_mode, tag=tlc.hivewings.toggle] run function tlc:abilities/activate/hivewings/sting_strike/paralysis_mode

    # Revoke advancement
advancement revoke @s only tlc:abilities/hivewings/sting_strike/used

#endregion
