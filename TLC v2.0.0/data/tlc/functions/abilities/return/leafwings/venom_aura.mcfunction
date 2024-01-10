#> tlc:abilities/return/leafwings/venom_aura
#
# Grant the player the LeafWing ability Venom Aura.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:venom_aura.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/return/leafwings/venom_aura.mcfunction", "color": "aqua"}}}]

    # Give Venom Aura
loot replace entity @s hotbar.8 loot tlc:commands/ability/leafwings/venom_aura

#endregion
