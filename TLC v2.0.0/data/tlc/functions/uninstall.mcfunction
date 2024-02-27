#> tlc:uninstall
#
# Uninstall The Lost Continent.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:functions/uninstall.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/tlc/functions/uninstall.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:functions/uninstall.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/tlc/functions/uninstall.mcfunction", "color": "aqua"}}}]

    # Disable datapack
datapack disable "file/TLC v1.0.0"

    # Decrease available DLC counter
scoreboard players operation #eoflib.active_dlcs eoflib.dlcs -= #eoflib.dlc.tlc eoflib.dlcs

    # Post-delete message
tellraw @a[tag=!eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "TLC", "color": "gold"}, {"text": "] The Lost Continent has been uninstalled.", "color": "gray"}]

#endregion
