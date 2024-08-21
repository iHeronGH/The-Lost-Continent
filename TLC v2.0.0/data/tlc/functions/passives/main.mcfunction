#> tlc:passives/main
#
# Applies effects to players with their effects toggled on.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:passives/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:passives/main.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:passives/main.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:passives/main.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:passives/main.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:passives/main.mcfunction", "color": "aqua"}}}]

    # Clear other advancements
function #eoflib:reset/tribe_advancements

    # Clear other cooldowns
execute if entity @a[predicate=tlc:abilities/cooldowns/on_cooldown] run function #eoflib:reset/cooldowns

    # Determine effects based on tribe
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/hivewings] run function tlc:passives/hivewings/base
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/leafwings] run function tlc:passives/leafwings/base
execute if entity @a[tag=eoflib.atts, predicate=tlc:tribes/silkwings] run function tlc:passives/silkwings/base

#endregion
