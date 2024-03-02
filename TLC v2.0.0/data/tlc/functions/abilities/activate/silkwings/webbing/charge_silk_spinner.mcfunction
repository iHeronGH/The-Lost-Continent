#> tlc:abilities/activate/silkwings/webbing/charge_silk_spinner
#
# Increase Silk Spinner charge rate by 33%.

#region


    # Increase Silk Spinner charge rate
execute if predicate tlc:passives/silk_spinner/not_full run scoreboard players add @s tlc.passives.silk_spinner 5

    # Revoke advancement
advancement revoke @s only tlc:abilities/silkwings/webbing/held

#endregion
