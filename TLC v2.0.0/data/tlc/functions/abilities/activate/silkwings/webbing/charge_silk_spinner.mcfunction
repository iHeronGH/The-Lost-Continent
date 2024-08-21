#> tlc:abilities/activate/silkwings/webbing/charge_silk_spinner
#
# Increase Silk Spinner charge rate by 33%.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:webbing/charge_silk_spinner.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:abilities/activate/silkwings/webbing/charge_silk_spinner.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:webbing/charge_silk_spinner.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:abilities/activate/silkwings/webbing/charge_silk_spinner.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:webbing/charge_silk_spinner.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:abilities/activate/silkwings/webbing/charge_silk_spinner.mcfunction", "color": "aqua"}}}]

    # Increase Silk Spinner charge rate
execute if predicate tlc:passives/silk_spinner/not_full run scoreboard players add @s tlc.passives.silk_spinner 5

    # Revoke advancement
advancement revoke @s only tlc:abilities/silkwings/webbing/held

#endregion
