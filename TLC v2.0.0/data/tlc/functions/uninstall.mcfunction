#> tlc:uninstall
#
# Uninstall The Lost Continent.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:uninstall.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/uninstall.mcfunction", "color": "aqua"}}}]

    # Disable datapack
datapack disable "file/TLC v1.0.0"

    # Decrease available DLC counter
scoreboard players operation #eoflib.active_dlcs eoflib.dlcs -= #eoflib.dlc.tlc eoflib.dlcs

    # Post-delete message
tellraw @a[tag=!eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "TLC", "color": "gold"}, {"text": "] The Lost Continent has been uninstalled.", "color": "gray"}]

#endregion
