#> tlc:reset/cooldowns/hivewings
#
# Reset all HiveWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:cooldowns/hivewings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/reset/cooldowns/hivewings.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:cooldowns/hivewings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/reset/cooldowns/hivewings.mcfunction", "color": "aqua"}}}]

    # Reset HiveWing cooldowns
scoreboard players set @a[predicate=!tlc:tribes/hivewings] tlc.passives.synchrosocial 0

#endregion
