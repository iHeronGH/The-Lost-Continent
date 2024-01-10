#> tlc:load/gen/scoreboards/passive_objectives
#
# Initialises passive ability objectives.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:passive_objectives.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/gen/scoreboards/passive_objectives.mcfunction", "color": "aqua"}}}]

    # Passive objectives
#define objective tlc.passives.synchrosocial Stores Synchrosocial scores.
scoreboard objectives add tlc.passives.synchrosocial dummy

#define objective tlc.passives.photosynthesis Stores Photosynthesis scores.
scoreboard objectives add tlc.passives.photosynthesis dummy

#define objective tlc.passives.silk_spinner Stores Silk Spinner scores.
scoreboard objectives add tlc.passives.silk_spinner dummy

#endregion
