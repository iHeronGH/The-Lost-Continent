#> tlc:reset/cooldowns/other/hivewings
#
# Reset all HiveWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:other/hivewings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:reset/cooldowns/other/hivewings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:other/hivewings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:reset/cooldowns/other/hivewings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:other/hivewings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:reset/cooldowns/other/hivewings.mcfunction", "color": "aqua"}}}]

    # Reset HiveWing cooldowns
        ## Reset abilities
scoreboard players set @a[predicate=!tlc:tribes/hivewings] tlc.abilities.acid_spray 0
scoreboard players set @a[predicate=!tlc:tribes/hivewings] tlc.abilities.hive_mind 0
scoreboard players set @a[predicate=!tlc:tribes/hivewings] tlc.abilities.sting_strike 0

        ## Reset passives
scoreboard players set @a[predicate=!tlc:tribes/hivewings] tlc.passives.synchrosocial 0

#endregion
