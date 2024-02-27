#> tlc:abilities/return/leafwings/venom_aura
#
# Grant the player the LeafWing ability Venom Aura.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/venom_aura.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/abilities/return/leafwings/venom_aura.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/venom_aura.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/abilities/return/leafwings/venom_aura.mcfunction", "color": "aqua"}}}]

    # Give Venom Aura
loot replace entity @s hotbar.8 loot tlc:commands/ability/leafwings/venom_aura

#endregion
