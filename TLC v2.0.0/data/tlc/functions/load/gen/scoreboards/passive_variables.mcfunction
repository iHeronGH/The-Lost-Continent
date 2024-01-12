#> tlc:load/gen/scoreboards/passive_variables
#
# Initialises passive ability variables.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/passive_variables.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/gen/scoreboards/passive_variables.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/passive_variables.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/gen/scoreboards/passive_variables.mcfunction", "color": "aqua"}}}]

    # Synchrosocial
#define score_holder #tlc.passives.synchrosocial.1 Sets the minimum player threshold for Synchrosocial 1.
execute unless score #tlc.passives.synchrosocial.1 tlc.passives.synchrosocial = #tlc.passives.synchrosocial.1 tlc.passives.synchrosocial run scoreboard players set #tlc.passives.synchrosocial.1 tlc.passives.synchrosocial 2

#define score_holder #tlc.passives.synchrosocial.2 Sets the minimum player threshold for Synchrosocial 2.
execute unless score #tlc.passives.synchrosocial.2 tlc.passives.synchrosocial = #tlc.passives.synchrosocial.2 tlc.passives.synchrosocial run scoreboard players set #tlc.passives.synchrosocial.2 tlc.passives.synchrosocial 3

#define score_holder #tlc.passives.synchrosocial.3 Sets the minimum player threshold for Synchrosocial 3.
execute unless score #tlc.passives.synchrosocial.3 tlc.passives.synchrosocial = #tlc.passives.synchrosocial.3 tlc.passives.synchrosocial run scoreboard players set #tlc.passives.synchrosocial.3 tlc.passives.synchrosocial 4

    # Silk Spinner
#define score_holder #tlc.passives.silk_spinner.silk_shot_charge_consumption Sets the amoutn of Silk Spinner charges Silk Shot consumes.
execute unless score #tlc.passives.silk_spinner.silk_shot_charge_consumption tlc.passives.silk_spinner = #tlc.passives.silk_spinner.silk_shot_charge_consumption tlc.passives.silk_spinner run scoreboard players set #tlc.passives.silk_spinner.silk_shot_charge_consumption tlc.passives.silk_spinner 3600

#define score_holder #tlc.passives.silk_spinner.0.max Sets the maximum Silk Spinner charge needed to achieve level 0.
execute unless score #tlc.passives.silk_spinner.0.max tlc.passives.silk_spinner = #tlc.passives.silk_spinner.0.max tlc.passives.silk_spinner run scoreboard players set #tlc.passives.silk_spinner.0.max tlc.passives.silk_spinner 899

#define score_holder #tlc.passives.silk_spinner.1.min Sets the minimum Silk Spinner charge needed to achieve level 1.
execute unless score #tlc.passives.silk_spinner.1.min tlc.passives.silk_spinner = #tlc.passives.silk_spinner.1.min tlc.passives.silk_spinner run scoreboard players set #tlc.passives.silk_spinner.1.min tlc.passives.silk_spinner 900

#define score_holder #tlc.passives.silk_spinner.1.max Sets the maximum Silk Spinner charge needed to achieve level 1.
execute unless score #tlc.passives.silk_spinner.1.max tlc.passives.silk_spinner = #tlc.passives.silk_spinner.1.max tlc.passives.silk_spinner run scoreboard players set #tlc.passives.silk_spinner.1.max tlc.passives.silk_spinner 2099

#define score_holder #tlc.passives.silk_spinner.2.min Sets the minimum Silk Spinner charge needed to achieve level 2.
execute unless score #tlc.passives.silk_spinner.2.min tlc.passives.silk_spinner = #tlc.passives.silk_spinner.2.min tlc.passives.silk_spinner run scoreboard players set #tlc.passives.silk_spinner.2.min tlc.passives.silk_spinner 2100

#define score_holder #tlc.passives.silk_spinner.2.max Sets the maximum Silk Spinner charge needed to achieve level 2.
execute unless score #tlc.passives.silk_spinner.2.max tlc.passives.silk_spinner = #tlc.passives.silk_spinner.2.max tlc.passives.silk_spinner run scoreboard players set #tlc.passives.silk_spinner.2.max tlc.passives.silk_spinner 3599

#define score_holder #tlc.passives.silk_spinner.3.min Sets the minimum Silk Spinner charge needed to achieve level 3.
execute unless score #tlc.passives.silk_spinner.3.min tlc.passives.silk_spinner = #tlc.passives.silk_spinner.3.min tlc.passives.silk_spinner run scoreboard players set #tlc.passives.silk_spinner.3.min tlc.passives.silk_spinner 3600

#define score_holder #tlc.passives.silk_spinner.3.max Sets the maximum Silk Spinner charge needed to achieve level 3.
execute unless score #tlc.passives.silk_spinner.3.max tlc.passives.silk_spinner = #tlc.passives.silk_spinner.3.max tlc.passives.silk_spinner run scoreboard players set #tlc.passives.silk_spinner.3.max tlc.passives.silk_spinner 5399

#define score_holder #tlc.passives.silk_spinner.4.min Sets the minimum Silk Spinner charge needed to achieve level 4.
execute unless score #tlc.passives.silk_spinner.4.min tlc.passives.silk_spinner = #tlc.passives.silk_spinner.4.min tlc.passives.silk_spinner run scoreboard players set #tlc.passives.silk_spinner.4.min tlc.passives.silk_spinner 5400

#define score_holder #tlc.passives.silk_spinner.4.max Sets the maximum Silk Spinner charge needed to achieve level 4.
execute unless score #tlc.passives.silk_spinner.4.max tlc.passives.silk_spinner = #tlc.passives.silk_spinner.4.max tlc.passives.silk_spinner run scoreboard players set #tlc.passives.silk_spinner.4.max tlc.passives.silk_spinner 7199

#define score_holder #tlc.passives.silk_spinner.5.min Sets the minimum Silk Spinner charge needed to achieve level 5.
execute unless score #tlc.passives.silk_spinner.5.min tlc.passives.silk_spinner = #tlc.passives.silk_spinner.5.min tlc.passives.silk_spinner run scoreboard players set #tlc.passives.silk_spinner.5.min tlc.passives.silk_spinner 7200

#endregion
