#> tlc:load/hw
#
# Hello world!

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:hw.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/hw.mcfunction", "color": "aqua"}}}]

    # Baseline
execute if score #eoflib.dlc.tlc eoflib.dlcs matches 1 run tellraw @a [{"text": "[", "color": "gray"}, {"text": "TLC", "color": "gold"}, {"text": "] ", "color": "gray"}, {"text": "The Lost Continent", "color": "gold"}, {"text":" detected!", "color": "gray"}]

#endregion
