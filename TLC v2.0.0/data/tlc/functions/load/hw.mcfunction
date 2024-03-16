#> tlc:load/hw
#
# Hello world!

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:load/hw.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/load/hw.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:load/hw.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/load/hw.mcfunction", "color": "aqua"}}}]

    # Increment available DLCs
scoreboard players add #eoflib.available_dlcs eoflib.dlcs 1

    # Baseline
tellraw @a[tag=eoflib.admin] [{"text": "[", "color": "gray"}, {"text": "TLC", "color": "gold"}, {"text": "] ", "color": "gray"}, {"text": "The Lost Continent", "color": "gold"}, {"text":" detected!", "color": "gray"}]

#endregion
