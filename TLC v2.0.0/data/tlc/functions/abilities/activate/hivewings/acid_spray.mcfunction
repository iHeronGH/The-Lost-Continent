#> tlc:abilities/activate/hivewings/acid_spray
#
# Activate HiveWing ability Acid Spray.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:acid_spray.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/abilities/activate/hivewings/acid_spray.mcfunction", "color": "aqua"}}}]

    # Activate Acid Spray
        ## User Effects
tellraw @s {"text": "tlc:abilities/activate/hivewings/acid_spray.mcf", "color": "gold"}
execute anchored eyes positioned ^ ^-0.2 ^ run function eoflib_raycast:raycast/start with storage eoflib:config tlc.Abilities[].HiveWings[].primary[].eof_data

        ## Enemy Effects

    # Revoke advancement
advancement revoke @s only tlc:abilities/hivewings/acid_spray

#endregion
