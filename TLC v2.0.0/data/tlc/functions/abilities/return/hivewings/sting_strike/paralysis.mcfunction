#> tlc:abilities/return/hivewings/sting_strike/paralysis
#
# Grant the player the HiveWing ability Sting Strike, Paralysis mode.

#region
    # Give Sting Strike
loot replace entity @s hotbar.8 loot tlc:commands/ability/hivewings/sting_strike/paralysis

    # Correct tags
tag @s add tlc.hivewings.paralysis_mode
tag @s remove tlc.hivewings.poison_mode

#endregion
