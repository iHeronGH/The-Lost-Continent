#> tlc:reset/cooldowns/leafwings
#
# Reset all LeafWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:cooldowns/leafwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/reset/cooldowns/leafwings.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:cooldowns/leafwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/reset/cooldowns/leafwings.mcfunction", "color": "aqua"}}}]

    # Reset LeafWing cooldowns
scoreboard players set @a[predicate=!tlc:tribes/leafwings] tlc.passives.photosynthesis 0

#endregion
