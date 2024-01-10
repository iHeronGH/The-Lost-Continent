#> tlc:abilities/activate/silkwings/sense
#
# Activate SilkWing ability Sense.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:sense.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/silkwings/sense.mcfunction", "color": "aqua"}}}]

    # Activate Sense
        ## User effects

        ## Enemy effects

    # Revoke advancement
advancement revoke @s only tlc:abilities/silkwings/sense

#endregion
