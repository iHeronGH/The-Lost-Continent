#> tlc:abilities/activate/silkwings/webbing
#
# Activate SilkWing ability Webbing.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:webbing.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/silkwings/webbing.mcfunction", "color": "aqua"}}}]

    # Activate Webbing
        ## User effects

        ## Enemy effects

    # Revoke advancement
advancement revoke @s only tlc:abilities/silkwings/webbing

#endregion
