#> tlc:reset/cooldowns/hivewings
#
# Reset all HiveWing cooldowns.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:hivewings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/reset/cooldowns/hivewings.mcfunction", "color": "aqua"}}}]

    # Reset HiveWing cooldowns
scoreboard players set @a[predicate=!tlc:tribes/hivewings] tlc.passives.synchrosocial 0
# say HiveWing cooldowns reset.

#endregion
