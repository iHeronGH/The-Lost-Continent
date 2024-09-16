#> tlc:load/del/scoreboards
#
# Delete scoreboards from The Lost Continent.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:del/scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:load/del/scoreboards.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:del/scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:load/del/scoreboards.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:del/scoreboards.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:load/del/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
        ## Ability objectives
scoreboard objectives remove tlc.abilities.acid_spray
scoreboard objectives remove tlc.abilities.fury_shift
scoreboard objectives remove tlc.abilities.hive_mind
scoreboard objectives remove tlc.abilities.leafspeak
scoreboard objectives remove tlc.abilities.metamorphosis
scoreboard objectives remove tlc.abilities.silk_shot
scoreboard objectives remove tlc.abilities.sting_strike
scoreboard objectives remove tlc.abilities.venom_aura
scoreboard objectives remove tlc.abilities.webbing

        ## Passive objectives
scoreboard objectives remove tlc.passives.photosynthesis
scoreboard objectives remove tlc.passives.silk_spinner
scoreboard objectives remove tlc.passives.synchrosocial

#endregion
