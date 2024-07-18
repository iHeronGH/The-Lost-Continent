#> tlc:load/gen/scoreboards/ability_variables
#
# Initialises active ability variables.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/ability_variables.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/tlc/functions/load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/ability_variables.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/tlc/functions/load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/ability_variables.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/tlc/functions/load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}}}]

    # Ability variables
        ## Primary
            ### Acid Spray
#define score_holder #tlc.abilities.acid_spray.cooldown Sets the cooldown for Acid Spray.
execute store result score #tlc.abilities.acid_spray.cooldown tlc.abilities.acid_spray run data get storage eoflib:config tlc.Abilities[].HiveWings[].primary[].eof_data.ability_data.cooldown 20

#define score_holder #tlc.abilities.acid_spray.duration Sets the duration for Acid Spray.
execute store result score #tlc.abilities.acid_spray.duration tlc.abilities.acid_spray run data get storage eoflib:config tlc.Abilities[].HiveWings[].primary[].eof_data.ability_data.duration 20

#define score_holder #tlc.abilities.acid_spray.duration_end Calculates the scoreboard value for when the maximum duration for Acid Spray has occurred.
scoreboard players operation #tlc.abilities.acid_spray.duration_end tlc.abilities.acid_spray = #tlc.abilities.acid_spray.cooldown tlc.abilities.acid_spray
scoreboard players operation #tlc.abilities.acid_spray.duration_end tlc.abilities.acid_spray -= #tlc.abilities.acid_spray.duration tlc.abilities.acid_spray

            ### Fury Shift
#define score_holder #tlc.abilities.fury_shift.cooldown Sets the cooldown for Fury Shift.
execute store result score #tlc.abilities.fury_shift.cooldown tlc.abilities.fury_shift run data get storage eoflib:config tlc.Abilities[].LeafWings[].primary[0].eof_data.ability_data.cooldown 20

#define score_holder #tlc.abilities.fury_shift.duration Sets the duration for Fury Shift.
execute store result score #tlc.abilities.fury_shift.duration tlc.abilities.fury_shift run data get storage eoflib:config tlc.Abilities[].LeafWings[].primary[0].eof_data.ability_data.duration 20

#define score_holder #tlc.abilities.fury_shift.duration_end Calculates the scoreboard value for when the maximum duration for Fury Shift has occurred.
scoreboard players operation #tlc.abilities.fury_shift.duration_end tlc.abilities.fury_shift = #tlc.abilities.fury_shift.cooldown tlc.abilities.fury_shift
scoreboard players operation #tlc.abilities.fury_shift.duration_end tlc.abilities.fury_shift -= #tlc.abilities.fury_shift.duration tlc.abilities.fury_shift

            ### Silk Shot
#define score_holder #tlc.abilities.silk_shot.cooldown Sets the cooldown for Silk Shot.
execute store result score #tlc.abilities.silk_shot.cooldown tlc.abilities.silk_shot run data get storage eoflib:config tlc.Abilities[].SilkWings[].primary[].eof_data.ability_data.cooldown 20

#define score_holder #tlc.abilities.silk_shot.duration Sets the duration for Silk Shot.
execute store result score #tlc.abilities.silk_shot.duration tlc.abilities.silk_shot run data get storage eoflib:config tlc.Abilities[].SilkWings[].primary[].eof_data.ability_data.duration 20

#define score_holder #tlc.abilities.silk_shot.duration_end Calculates the scoreboard value for when the maximum duration for Silk Shot has occurred.
scoreboard players operation #tlc.abilities.silk_shot.duration_end tlc.abilities.silk_shot = #tlc.abilities.silk_shot.cooldown tlc.abilities.silk_shot
scoreboard players operation #tlc.abilities.silk_shot.duration_end tlc.abilities.silk_shot -= #tlc.abilities.silk_shot.duration tlc.abilities.silk_shot

        ## Secondary
            ### Hive Mind
#define score_holder #tlc.abilities.hive_mind.cooldown Sets the cooldown for Hive Mind.
execute store result score #tlc.abilities.hive_mind.cooldown tlc.abilities.hive_mind run data get storage eoflib:config tlc.Abilities[].HiveWings[].secondary[].eof_data.ability_data.cooldown 20

#define score_holder #tlc.abilities.hive_mind.duration Sets the duration for Hive Mind.
execute store result score #tlc.abilities.hive_mind.duration tlc.abilities.hive_mind run data get storage eoflib:config tlc.Abilities[].HiveWings[].secondary[].eof_data.ability_data.duration 20

#define score_holder #tlc.abilities.hive_mind.duration_end Calculates the scoreboard value for when the maximum duration for Hive Mind has occurred.
scoreboard players operation #tlc.abilities.hive_mind.duration_end tlc.abilities.hive_mind = #tlc.abilities.hive_mind.cooldown tlc.abilities.hive_mind
scoreboard players operation #tlc.abilities.hive_mind.duration_end tlc.abilities.hive_mind -= #tlc.abilities.hive_mind.duration tlc.abilities.hive_mind

            ### Leafspeak
#define score_holder #tlc.abilities.leafspeak.cooldown Sets the cooldown for Leafspeak.
execute store result score #tlc.abilities.leafspeak.cooldown tlc.abilities.leafspeak run data get storage eoflib:config tlc.Abilities[].LeafWings[].secondary[].eof_data.ability_data.cooldown 20

#define score_holder #tlc.abilities.leafspeak.duration Sets the duration for Leafspeak.
execute store result score #tlc.abilities.leafspeak.duration tlc.abilities.leafspeak run data get storage eoflib:config tlc.Abilities[].LeafWings[].secondary[].eof_data.ability_data.duration 20

#define score_holder #tlc.abilities.leafspeak.duration_end Calculates the scoreboard value for when the maximum duration for Leafspeak has occurred.
scoreboard players operation #tlc.abilities.leafspeak.duration_end tlc.abilities.leafspeak = #tlc.abilities.leafspeak.cooldown tlc.abilities.leafspeak
scoreboard players operation #tlc.abilities.leafspeak.duration_end tlc.abilities.leafspeak -= #tlc.abilities.leafspeak.duration tlc.abilities.leafspeak

        ## Tertiary
            ### Sting Strike
#define score_holder #tlc.abilities.sting_strike.cooldown Sets the cooldown for Sting Strike.
execute store result score #tlc.abilities.sting_strike.cooldown tlc.abilities.sting_strike run data get storage eoflib:config tlc.Abilities[].HiveWings[].tertiary[0].eof_data.ability_data.cooldown 20

#define score_holder #tlc.abilities.sting_strike.duration Sets the duration for Sting Strike.
execute store result score #tlc.abilities.sting_strike.duration tlc.abilities.sting_strike run data get storage eoflib:config tlc.Abilities[].HiveWings[].tertiary[].eof_data.ability_data.duration 20

#define score_holder #tlc.abilities.sting_strike.duration_end Calculates the scoreboard value for when the maximum duration for Sting Strike has occurred.
scoreboard players operation #tlc.abilities.sting_strike.duration_end tlc.abilities.sting_strike = #tlc.abilities.sting_strike.cooldown tlc.abilities.sting_strike
scoreboard players operation #tlc.abilities.sting_strike.duration_end tlc.abilities.sting_strike -= #tlc.abilities.sting_strike.duration tlc.abilities.sting_strike

            ### Venom Aura
#define score_holder #tlc.abilities.venom_aura.cooldown Sets the cooldown for Venom Aura.
execute store result score #tlc.abilities.venom_aura.cooldown tlc.abilities.venom_aura run data get storage eoflib:config tlc.Abilities[].LeafWings[].tertiary[].eof_data.ability_data.cooldown 20

#define score_holder #tlc.abilities.venom_aura.duration Sets the duration for Venom Aura.
execute store result score #tlc.abilities.venom_aura.duration tlc.abilities.venom_aura run data get storage eoflib:config tlc.Abilities[].LeafWings[].tertiary[].eof_data.ability_data.duration 20

#define score_holder #tlc.abilities.venom_aura.duration_end Calculates the scoreboard value for when the maximum duration for Venom Aura has occurred.
scoreboard players operation #tlc.abilities.venom_aura.duration_end tlc.abilities.venom_aura = #tlc.abilities.venom_aura.cooldown tlc.abilities.venom_aura
scoreboard players operation #tlc.abilities.venom_aura.duration_end tlc.abilities.venom_aura -= #tlc.abilities.venom_aura.duration tlc.abilities.venom_aura

            ### Webbing
#define score_holder #tlc.abilities.webbing.cooldown Sets the cooldown for Webbing.
execute store result score #tlc.abilities.webbing.cooldown tlc.abilities.webbing run data get storage eoflib:config tlc.Abilities[].SilkWings[].tertiary[].eof_data.ability_data.cooldown 20

#define score_holder #tlc.abilities.webbing.duration Sets the duration for Webbing.
execute store result score #tlc.abilities.webbing.duration tlc.abilities.webbing run data get storage eoflib:config tlc.Abilities[].SilkWings[].tertiary[].eof_data.ability_data.duration 20

#define score_holder #tlc.abilities.webbing.duration_end Calculates the scoreboard value for when the maximum duration for Webbing has occurred.
scoreboard players operation #tlc.abilities.webbing.duration_end tlc.abilities.webbing = #tlc.abilities.webbing.cooldown tlc.abilities.webbing
scoreboard players operation #tlc.abilities.webbing.duration_end tlc.abilities.webbing -= #tlc.abilities.webbing.duration tlc.abilities.webbing

#endregion
