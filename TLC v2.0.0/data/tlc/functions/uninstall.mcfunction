#> tlc:uninstall
#
# Uninstall The Lost Continent.

#region
    # Disable datapack
datapack disable "file/TLC v1.0.0"

    # Decrease available DLC counter
scoreboard players operation #eoflib.active_dlcs eoflib.dlcs -= #eoflib.dlc.tlc eoflib.dlcs

    # Post-delete message
tellraw @a[tag=!eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "TLC", "color": "gold"}, {"text": "] The Lost Continent has been uninstalled.", "color": "gray"}]

#endregion
