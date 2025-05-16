#> tlc:reset/cooldowns/other/silkwings
#
# Reset all SilkWing cooldowns.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:other/silkwings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:reset/cooldowns/other/silkwings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:other/silkwings.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:reset/cooldowns/other/silkwings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:other/silkwings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:reset/cooldowns/other/silkwings.mcfunction", "color": "aqua"}}}]

    # Reset SilkWing cooldowns
        ## Reset abilities
scoreboard players set @a[predicate=!tlc:tribes/silkwings] tlc.abilities.silk_shot 0
scoreboard players set @a[predicate=!tlc:tribes/silkwings] tlc.abilities.metamorphosis 0
scoreboard players set @a[predicate=!tlc:tribes/silkwings] tlc.abilities.webbing 0

        ## Reset passives
scoreboard players set @a[predicate=!tlc:tribes/silkwings] tlc.passives.silk_spinner 0
bossbar set tlc:passives/silk_spinner/0 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/0_range]
bossbar set tlc:passives/silk_spinner/1 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/1_range]
bossbar set tlc:passives/silk_spinner/2 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/2_range]
bossbar set tlc:passives/silk_spinner/3 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/3_range]
bossbar set tlc:passives/silk_spinner/4 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/4_range]
bossbar set tlc:passives/silk_spinner/5 players @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/5]

#endregion
