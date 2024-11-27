#> tlc:load/gen/scoreboards/ability_variables
#
# Initialises active ability variables.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/ability_variables.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/ability_variables.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/ability_variables.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:load/gen/scoreboards/ability_variables.mcfunction", "color": "aqua"}}}]

    # Ability variables
        ## Primary
            ### Acid Spray
#define score_holder #cooldown Sets the cooldown for Acid Spray.
execute store result score #cooldown tlc.abilities.acid_spray run data get storage eoflib:config tlc.Abilities[].HiveWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Acid Spray.
execute store result score #duration tlc.abilities.acid_spray run data get storage eoflib:config tlc.Abilities[].HiveWings.primary[0].eof_data.ability_data.duration 20

            ### Fury Shift
#define score_holder #cooldown Sets the cooldown for Fury Shift.
execute store result score #cooldown tlc.abilities.fury_shift run data get storage eoflib:config tlc.Abilities[].LeafWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Fury Shift.
execute store result score #duration tlc.abilities.fury_shift run data get storage eoflib:config tlc.Abilities[].LeafWings.primary[0].eof_data.ability_data.duration 20

            ### Silk Shot
#define score_holder #cooldown Sets the cooldown for Silk Shot.
execute store result score #cooldown tlc.abilities.silk_shot run data get storage eoflib:config tlc.Abilities[].SilkWings.primary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Silk Shot.
execute store result score #duration tlc.abilities.silk_shot run data get storage eoflib:config tlc.Abilities[].SilkWings.primary[0].eof_data.ability_data.duration 20

        ## Secondary
            ### Hive Mind
#define score_holder #cooldown Sets the cooldown for Hive Mind.
execute store result score #cooldown tlc.abilities.hive_mind run data get storage eoflib:config tlc.Abilities[].HiveWings.secondary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Hive Mind.
execute store result score #duration tlc.abilities.hive_mind run data get storage eoflib:config tlc.Abilities[].HiveWings.secondary[0].eof_data.ability_data.duration 20

            ### Leafspeak
#define score_holder #cooldown Sets the cooldown for Leafspeak.
execute store result score #cooldown tlc.abilities.leafspeak run data get storage eoflib:config tlc.Abilities[].LeafWings.secondary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Leafspeak.
execute store result score #duration tlc.abilities.leafspeak run data get storage eoflib:config tlc.Abilities[].LeafWings.secondary[0].eof_data.ability_data.duration 20

            ### Metamorphosis
#define score_holder #cooldown Sets the cooldown for Metamorphosis.
execute store result score #cooldown tlc.abilities.metamorphosis run data get storage eoflib:config tlc.Abilities[].SilkWings.secondary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Metamorphosis.
execute store result score #duration tlc.abilities.metamorphosis run data get storage eoflib:config tlc.Abilities[].SilkWings.secondary[0].eof_data.ability_data.duration 20

        ## Tertiary
            ### Sting Strike
#define score_holder #cooldown Sets the cooldown for Sting Strike.
execute store result score #cooldown tlc.abilities.sting_strike run data get storage eoflib:config tlc.Abilities[].HiveWings.tertiary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Sting Strike.
execute store result score #duration tlc.abilities.sting_strike run data get storage eoflib:config tlc.Abilities[].HiveWings.tertiary[0].eof_data.ability_data.duration 20

            ### Venom Aura
#define score_holder #cooldown Sets the cooldown for Venom Aura.
execute store result score #cooldown tlc.abilities.venom_aura.cooldown run data get storage eoflib:config tlc.Abilities[].LeafWings.tertiary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Venom Aura.
execute store result score #duration tlc.abilities.venom_aura.duration run data get storage eoflib:config tlc.Abilities[].LeafWings.tertiary[0].eof_data.ability_data.duration 20

            ### Webbing
#define score_holder #cooldown Sets the cooldown for Webbing.
execute store result score #cooldown tlc.abilities.webbing run data get storage eoflib:config tlc.Abilities[].SilkWings.tertiary[0].eof_data.ability_data.cooldown 20

#define score_holder #duration Sets the duration for Webbing.
execute store result score #duration tlc.abilities.webbing run data get storage eoflib:config tlc.Abilities[].SilkWings.tertiary[0].eof_data.ability_data.duration 20

#endregion
