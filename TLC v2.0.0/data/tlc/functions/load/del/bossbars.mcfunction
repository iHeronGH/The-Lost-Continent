#> tlc:load/del/bossbars
#
# Delete bossbars from The Lost Continent.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "tlc:bossbars.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/tlc/functions/load/del/bossbars.mcfunction", "color": "aqua"}}}]

    # Remove bossbars
bossbar remove tlc:passives/silk_spinner/0
bossbar remove tlc:passives/silk_spinner/1
bossbar remove tlc:passives/silk_spinner/2
bossbar remove tlc:passives/silk_spinner/3
bossbar remove tlc:passives/silk_spinner/4
bossbar remove tlc:passives/silk_spinner/5

#endregion
