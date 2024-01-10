#> tlc:abilities/return/leafwings/leafspeak
#
# Grant the player the LeafWing ability Leafspeak.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:leafspeak.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/leafwings/leafspeak.mcfunction", "color": "aqua"}}}]

    # Give Leafspeak
loot replace entity @s hotbar.7 loot tlc:commands/ability/leafwings/leafspeak

#endregion
