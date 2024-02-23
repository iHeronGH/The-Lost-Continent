#> tlc:abilities/activate/leafwings/venom_aura/loop
#
#

#region
    # Debug


    # Activate Venom Aura
        ## User effects


        ## Enemy effects
effect give @e[predicate=eoflib:entities/affected, predicate=!tlc:tribes/leafwings, distance=..4] poison 4 1 true

    # Loop
execute if score @s tlc.abilities.venom_aura >= #tlc.abilities.venom_aura.duration_end tlc.abilities.venom_aura run schedule function tlc:abilities/activate/leafwings/venom_aura/loop 1t

#endregion