#> tlc:load/gen/scoreboards/passive_variables
#
# Initialises passive ability variables.

#region
    # Synchrosocial
#define score_holder #tlc.passives.synchrosocial.1 Sets the minimum player threshold for Synchrosocial 1.
execute unless score #tlc.passives.synchrosocial.1 tlc.passives.synchrosocial = #tlc.passives.synchrosocial.1 tlc.passives.synchrosocial run scoreboard players set #tlc.passives.synchrosocial.1 tlc.passives.synchrosocial 2

#define score_holder #tlc.passives.synchrosocial.2 Sets the minimum player threshold for Synchrosocial 2.
execute unless score #tlc.passives.synchrosocial.2 tlc.passives.synchrosocial = #tlc.passives.synchrosocial.2 tlc.passives.synchrosocial run scoreboard players set #tlc.passives.synchrosocial.2 tlc.passives.synchrosocial 3

#define score_holder #tlc.passives.synchrosocial.3 Sets the minimum player threshold for Synchrosocial 3.
execute unless score #tlc.passives.synchrosocial.3 tlc.passives.synchrosocial = #tlc.passives.synchrosocial.3 tlc.passives.synchrosocial run scoreboard players set #tlc.passives.synchrosocial.3 tlc.passives.synchrosocial 4

    # Silk Spinner
#define score_holder #tlc.passives.silk_spinner.silk_shot_charge_consumption Sets the charge consumption for Silk Shot usage.
execute unless score #tlc.passives.silk_spinner.silk_shot_charge_consumption tlc.passives.silk_spinner = #tlc.passives.silk_spinner.silk_shot_charge_consumption tlc.passives.silk_spinner run scoreboard players set #tlc.passives.silk_spinner.silk_shot_charge_consumption tlc.passives.silk_spinner 3600

#endregion
