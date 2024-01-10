#> tlc:reset/cooldowns/leafwings
#
# Reset all LeafWing cooldowns.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:leafwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/reset/cooldowns/leafwings.mcfunction", "color": "aqua"}}}]

    # Reset LeafWing cooldowns
scoreboard players set @a[predicate=!tlc:tribes/leafwings] tlc.passives.photosynthesis 0
# say LeafWing cooldowns reset.

#endregion
