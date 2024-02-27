#> tlc:abilities/activate/silkwings/webbing/loop
#
# Run Webbing.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:webbing/loop.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/abilities/activate/silkwings/webbing/loop.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:webbing/loop.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/abilities/activate/silkwings/webbing/loop.mcfunction", "color": "aqua"}}}]

    # Activate Webbing
        ## User effects


        ## Enemy effects


tellraw iHeron_ {"selector": "@a[tag=tlc.abilities.webbing]", "separator": ", "}

    # Loop
execute if entity @a[tag=tlc.abilities.webbing, predicate=tlc:tribes/silkwings, predicate=tlc:abilities/cooldowns/silkwings/webbing/active] run schedule function tlc:abilities/activate/silkwings/webbing/loop 1t

#endregion
