#> tlc:abilities/cooldowns/leafwings/venom_aura
#
# Run cooldown functions for the LeafWing ability Venom Aura.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/venom_aura.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/cooldowns/leafwings/venom_aura.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/venom_aura.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/cooldowns/leafwings/venom_aura.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=4..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:leafwings/venom_aura.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/cooldowns/leafwings/venom_aura.mcfunction", "color": "aqua"}}}]

    # Decrement cooldown
scoreboard players operation @a[tag=tlc.cooldown.active, predicate=tlc:tribes/leafwings, predicate=tlc:abilities/cooldowns/leafwings/venom_aura] tlc.abilities.venom_aura.duration -= #eoflib.1 eoflib.numbers
scoreboard players operation @a[tag=tlc.cooldown.active, predicate=tlc:tribes/leafwings, predicate=tlc:abilities/cooldowns/leafwings/venom_aura] tlc.abilities.venom_aura.cooldown -= #eoflib.1 eoflib.numbers

    # Announce deactive
title @a[tag=tlc.cooldown.active, tag=tlc.abilities.venom_aura, predicate=tlc:tribes/leafwings, predicate=!tlc:abilities/cooldowns/leafwings/venom_aura/active] actionbar {"text": "Venom Aura has entered cooldown!", "color": "dark_green"}
tag @a[tag=tlc.cooldown.active, tag=tlc.abilities.venom_aura, predicate=tlc:tribes/leafwings, predicate=!tlc:abilities/cooldowns/leafwings/venom_aura/active] remove tlc.abilities.venom_aura

    # Announce off cooldown
title @a[tag=tlc.cooldown.active, predicate=tlc:tribes/leafwings, predicate=!tlc:abilities/cooldowns/leafwings/venom_aura] actionbar {"text": "Venom Aura is off cooldown!", "color": "dark_green"}

#endregion
