#> tlc:abilities/return/hivewings/acid_spray
#
# Grant the player the Hivewing ability Frost Breath.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:acid_spray.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/hivewings/acid_spray.mcfunction", "color": "aqua"}}}]

    # Give Frost Breath
loot replace entity @s hotbar.6 loot tlc:commands/ability/hivewings/acid_spray

#endregion
