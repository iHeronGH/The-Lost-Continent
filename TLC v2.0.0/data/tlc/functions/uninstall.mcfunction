#region
	# Reset Player Items
clear @a #eoflib:items{eoflib: {}}

	# Remove Base Datapack
function eoflib:load/del/forceloads
function eoflib:load/del/scoreboards
function eoflib:load/del/storage
function eof:load/del/teams

	# Announce Removal
		## Player-prompted delete message
execute positioned ~ ~ ~ if entity @s run tellraw @a ["", {"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"selector": "@s"}, {"text": " is deleting Elytras of Fire...", "color": "gray"}]
		## Non-player-prompted delete message
execute positioned ~ ~ ~ unless entity @s run tellraw @a [{"text": "", "color": "red"}, {"text": "\n[", "color": "gray"}, "E", {"text": "o", "color": "gold"}, "F", {"text": "] ", "color": "gray"}, "Deleting Elytras of Fire..."]

		## Disable Datapack
datapack disable "file/EoF v2.0.0"

		## Post-Delete Admin Message
tellraw @a[tag=eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, "] The datapack has sucessfully been removed. If you wish to reinstall it, you can ", {"text": "click here", "color": "gold", "underlined": true, "clickEvent": {"action": "run_command", "value": "/datapack enable \"file/EoF v2.0.0\""}}, " and it will magically reinstall itself, or you can type the command ", {"text": "/datapack enable \"file/EoF v2.0.0\"", "color": "gold", "underlined": true, "clickEvent": {"action": "suggest_command", "value": "/datapack enable \"file/EoF v2.0.0\""}}, " to manually reinstall the datapack.\n\nThank you for using Elytras of Fire!"]

		## Post-Delete Non-Admin Message
tellraw @a[tag=!eoflib.admin] [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, "] Elytras of Fire has been uninstalled."]

#endregion
