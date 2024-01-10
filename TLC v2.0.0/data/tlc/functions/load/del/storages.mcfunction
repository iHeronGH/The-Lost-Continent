#> tlc:load/del/storages
#
# Remove abstract storage containers.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:storages.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/del/storages.mcfunction", "color": "aqua"}}}]

    # Remove Containers
data remove storage eoflib:config tlc

#endregion
