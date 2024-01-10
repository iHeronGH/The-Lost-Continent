#> tlc:abilities/activate/hivewings/sting_strike/activated
#
# Activate HiveWing ability Sting Strike.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:activated.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/hivewings/sting_strike/activated.mcfunction", "color": "aqua"}}}]

    # Activate Sting Strike
        ## User effects
        
        ## Enemy effects

    # Revoke advancement
advancement revoke @s only tlc:abilities/hivewings/sting_strike/activated

#endregion
