#> tlc:passives/silkwings/silk_spinner/charge
#
# Manage Silk Spinner charging.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_spinner/charge.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:passives/silkwings/silk_spinner/charge.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_spinner/charge.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:passives/silkwings/silk_spinner/charge.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:silk_spinner/charge.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:passives/silkwings/silk_spinner/charge.mcfunction", "color": "aqua"}}}]

    # Increase Silk Spinner score
scoreboard players add @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/not_full] tlc.passives.silk_spinner 15
scoreboard players set @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings, predicate=tlc:passives/silk_spinner/higher_than_max] tlc.passives.silk_spinner 7200

    # Switch out Silk Snipe for Silk Burst
execute as @a[tag=eoflib.abilities, predicate=tlc:passives/silk_spinner/4] run function #eoflib:reset/abilities

#endregion
