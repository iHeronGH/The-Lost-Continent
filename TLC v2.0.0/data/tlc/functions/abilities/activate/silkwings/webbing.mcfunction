#> tlc:abilities/activate/silkwings/webbing
#
# Activate SilkWing ability Webbing.

#region
    # Activate Webbing
        ## User effects
tellraw @s {"text": "tlc:abilities/activate/silkwings/webbing.mcf", "color": "dark_gray"}

        ## Enemy effects

    # Revoke advancement
advancement revoke @s only tlc:abilities/silkwings/webbing

#endregion
