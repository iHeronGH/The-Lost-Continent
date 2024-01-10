#> tlc:abilities/return/hivewings/sting_strike/poison
#
# Grant the player the HiveWing ability Sting Strike, Poison mode.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:poison.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/hivewings/sting_strike/poison.mcfunction", "color": "aqua"}}}]

    # Give Sting Strike
loot replace entity @s hotbar.8 loot tlc:commands/ability/hivewings/sting_strike/poison

    # Correct tags
tag @s add tlc.hivewings.poison_mode
tag @s remove tlc.hivewings.paralysis_mode

#endregion
