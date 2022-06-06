tellraw @a[tag=Debug] ["",{"text":"\n----------\n\nMain | As: "},{"selector":"@s"}]

function hierarchy:player/main
function hierarchy:global/main
execute if entity @a[scores={InGame=1..}] run function hierarchy:game/main
execute if entity @a[tag=InLobby] run function hierarchy:lobby/main
function hierarchy:easter-egg/main

execute at @a run fill ~-3 ~-1 ~3 ~3 ~1 ~3 air replace fire
