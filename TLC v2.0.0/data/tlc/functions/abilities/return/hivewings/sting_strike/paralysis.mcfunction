#> tlc:abilities/return/hivewings/sting_strike/paralysis
#
# Grant the player the HiveWing ability Sting Strike, Paralysis mode.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:paralysis.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/hivewings/sting_strike/paralysis.mcfunction", "color": "aqua"}}}]

    # Give Sting Strike
loot replace entity @s hotbar.8 loot tlc:commands/ability/hivewings/sting_strike/paralysis

    # Correct tags
tag @s add tlc.hivewings.paralysis_mode
tag @s remove tlc.hivewings.poison_mode

#endregion
