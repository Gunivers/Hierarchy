#OP players
execute if entity @r[gamemode=creative,tag=!OP] run function hierarchy:player/action/state/op
tag @a[gamemode=!creative] remove OP

#Disconnect
execute if entity @r[scores={Disconnected=1..}] run function hierarchy:player/action/state/reconnect

#First connect
scoreboard players add @a 1 0
execute if entity @a[scores={1=..0}] run function hierarchy:player/action/state/firstconnect


execute if entity @a[tag=InGame] run function hierarchy:player/action/state/main-if-ingame
