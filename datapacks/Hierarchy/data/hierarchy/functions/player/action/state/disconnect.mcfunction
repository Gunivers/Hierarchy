scoreboard players set @a[scores={1=..0}] Disconnected 1
title @a[scores={Disconnected=1..}] times 0 10 10
execute as @a[scores={1=1..,Disconnected=1..}] run tellraw @a ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> Welcome back ","color":"none"},{"selector":"@p","color":"none"},{"text":"!","color":"none"}]
execute as @a[scores={1=1..,Disconnected=1..}] run playsound minecraft:block.note.hat record @p
scoreboard players set @a Disconnected 0
