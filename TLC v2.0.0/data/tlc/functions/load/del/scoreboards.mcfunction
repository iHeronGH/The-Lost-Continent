#> tlc:load/del/scoreboards
#
# Delete scoreboards from The Lost Continent.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:scoreboards.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/del/scoreboards.mcfunction", "color": "aqua"}}}]

    # Scoreboards
        ## Passive Objectives
scoreboard objectives remove tlc.passives.synchrosocial
scoreboard objectives remove tlc.passives.photosynthesis
scoreboard objectives remove tlc.passives.silk_spinner

#endregion
