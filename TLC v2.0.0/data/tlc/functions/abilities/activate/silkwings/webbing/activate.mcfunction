#> tlc:abilities/activate/silkwings/webbing/activate
#
# Activate SilkWing ability Webbing.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:webbing/activate.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/abilities/activate/silkwings/webbing/activate.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:webbing/activate.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/abilities/activate/silkwings/webbing/activate.mcfunction", "color": "aqua"}}}]

    # Prepare user
tag @s[tag=!eoflib.cooldown.bypass] add tlc.cooldown.active
scoreboard players operation @s[tag=!eoflib.cooldown.bypass] tlc.abilities.webbing = #tlc.abilities.webbing.cooldown tlc.abilities.webbing

    # Activate Webbing
        ## User effects
tag @s add tlc.abilities.webbing
function tlc:abilities/activate/silkwings/webbing/loop

        ## Enemy effects
tag @e[predicate=eoflib:entities/affected, predicate=eoflib:damage/recent, predicate=!tlc:tribes/silkwings] add tlc.abilities.webbing.web_trails

    # Begin cooldown
execute if entity @s[tag=!eoflib.cooldown.bypass] run function #eoflib:abilities/cooldowns/main

    # Revoke advancement
advancement revoke @s only tlc:abilities/silkwings/webbing

#endregion
