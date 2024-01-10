#> tlc:abilities/activate/leafwings/venom_aura
#
# Activate RainWing ability Venom Aura.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:venom_aura.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/leafwings/venom_aura.mcfunction", "color": "aqua"}}}]

    # Activate Venom Aura
        ## User effects

        ## Enemy effects

    # Revoke advancement
advancement revoke @s only tlc:abilities/leafwings/venom_aura

#endregion
