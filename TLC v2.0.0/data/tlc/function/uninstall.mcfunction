#> tlc:uninstall
#
# Uninstall The Lost Continent.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:functions/uninstall.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- tlc:uninstall.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:functions/uninstall.mcf", "color": "#967228", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- tlc:uninstall.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:functions/uninstall.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- tlc:uninstall.mcfunction", "color": "aqua"}}}]

    # Disable datapack
datapack disable "file/TLC v2.0.0"

    # Decrease available DLC counter
scoreboard players remove #eoflib.active_dlcs eoflib.dlcs 1

    # Post-delete message
tellraw @a[tag=eoflib.admin] [{"text": "[", "color": "gray"}, {"text": "TLC", "color": "gold"}, {"text": "] The Lost Continent has been uninstalled.", "color": "gray"}]

#endregion
