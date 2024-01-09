#> tlc:abilities/activate/silkwings/sense
#
# Activate SilkWing ability Sense.

#region
    # Activate Sense
        ## User effects
tellraw @s {"text": "tlc:abilities/activate/silkwings/sense.mcf", "color": "white"}

        ## Enemy effects

    # Revoke advancement
advancement revoke @s only tlc:abilities/silkwings/sense

#endregion
