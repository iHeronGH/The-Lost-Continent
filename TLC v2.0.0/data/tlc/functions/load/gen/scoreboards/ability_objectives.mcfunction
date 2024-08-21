#> tlc:load/gen/scoreboards/ability_objectives
#
# Initialises active ability objectives.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/ability_objectives.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:load/gen/scoreboards/ability_objectives.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/ability_objectives.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:load/gen/scoreboards/ability_objectives.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:scoreboards/ability_objectives.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:load/gen/scoreboards/ability_objectives.mcfunction", "color": "aqua"}}}]

    # Ability objectives
        ## Primary
#define objective tlc.abilities.acid_spray Stores Frost Breath scores.
scoreboard objectives add tlc.abilities.acid_spray dummy

#define objective tlc.abilities.fury_shift Stores Flame Breath scores.
scoreboard objectives add tlc.abilities.fury_shift dummy

#define objective tlc.abilities.silk_shot Stores Venom Shot scores.
scoreboard objectives add tlc.abilities.silk_shot dummy

        ## Secondary
#define objective tlc.abilities.hive_mind Stores Serrated Strike scores.
scoreboard objectives add tlc.abilities.hive_mind dummy

#define objective tlc.abilities.metamorphosis Stores Metamorphosis scores.
scoreboard objectives add tlc.abilities.metamorphosis dummy

#define objective tlc.abilities.leafspeak Stores Leafspeak scores.
scoreboard objectives add tlc.abilities.leafspeak dummy

        ## Tertiary
#define objective tlc.abilities.sting_strike Stores Mud Swipe scores.
scoreboard objectives add tlc.abilities.sting_strike dummy

#define objective tlc.abilities.venom_aura Stores Venom Aura scores.
scoreboard objectives add tlc.abilities.venom_aura dummy

#define objective tlc.abilities.webbing Stores Webbing scores.
scoreboard objectives add tlc.abilities.webbing dummy

#endregion
