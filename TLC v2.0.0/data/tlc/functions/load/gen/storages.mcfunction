#> tlc:load/gen/storages
#
# Generates abstract storage containers.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:gen/storages.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- tlc:load/gen/storages.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:gen/storages.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- tlc:load/gen/storages.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "tlc:gen/storages.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- tlc:load/gen/storages.mcfunction", "color": "aqua"}}}]

    # Create storage
#define storage eoflib:config Contains all storage-driven data for Elytras of Fire DLCs.

    # Regenerate containers
        ## Ability data
execute if predicate eoflib:settings/admin/save_settings run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "Ability data not generated; Persistent Settings is enabled and thus no data has been overwritten.", "color": "red"}]
execute unless predicate eoflib:settings/admin/save_settings run function tlc:load/gen/storages/ability_data/hivewings
execute unless predicate eoflib:settings/admin/save_settings run function tlc:load/gen/storages/ability_data/leafwings
execute unless predicate eoflib:settings/admin/save_settings run function tlc:load/gen/storages/ability_data/silkwings

#endregion
