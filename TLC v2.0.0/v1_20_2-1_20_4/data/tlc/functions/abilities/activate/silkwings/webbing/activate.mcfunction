#> tlc:abilities/activate/silkwings/webbing/activate
#
# Activate SilkWing ability Webbing.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:webbing/activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:abilities/activate/silkwings/webbing/activate.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:webbing/activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:abilities/activate/silkwings/webbing/activate.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:webbing/activate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:abilities/activate/silkwings/webbing/activate.mcfunction", "color": "aqua"}}}]

    # Prepare user
tag @s[tag=!eoflib.cooldown.bypass] add tlc.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] tlc.abilities.webbing = #cooldown tlc.abilities.webbing

    # Activate Webbing
        ## User effects


        ## Enemy effects
tag @e[sort=nearest, limit=1, predicate=eoflib:entities/affected, predicate=eoflib:damage/recent, predicate=!tlc:tribes/silkwings, distance=0.1..10] add tlc.effects.entangled.1
schedule function tlc:effects/entangled/1 1t

    # Begin cooldown
tag @s[tag=!eoflib.cooldown.bypass] add tlc.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] tlc.abilities.webbing = #cooldown tlc.abilities.webbing
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

#endregion
