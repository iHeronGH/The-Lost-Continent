#> tlc:abilities/return/hivewings/hive_mind
#
# Grant the player the HiveWing ability Hive Mind.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:hive_mind.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/hivewings/hive_mind.mcfunction", "color": "aqua"}}}]

    # Give Hive Mind
loot replace entity @s hotbar.7 loot tlc:commands/ability/hivewings/hive_mind

#endregionon
