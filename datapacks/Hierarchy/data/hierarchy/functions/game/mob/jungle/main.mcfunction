
#Spawn
scoreboard players operation @e[type=armor_stand,tag=Orange] Var1 = @e[type=armor_stand,tag=Orange] Score
scoreboard players operation @e[type=armor_stand,tag=Orange] Var1 += @e[type=armor_stand,tag=Blue] Score
scoreboard players operation @e[type=armor_stand,tag=Orange] Var1 %= 100 Constant
#Score stores the tickets

tag @e[type=armor_stand,scores={Var1=0},tag=Orange] add SpawnJungle
tag @e[type=armor_stand,scores={Var1=0},tag=Orange] add SpawnJungleBlue
tag @e[type=armor_stand,scores={Var1=0},tag=Orange] add SpawnJungleOrange

execute if entity @e[type=armor_stand,scores={Timer=1},name=Orange,tag=SpawnJungle] run function hierarchy:game/mob/jungle/spawn

#Activation
scoreboard players set @e[tag=InactiveJungleMob] Var1 0
scoreboard players set @e[tag=InactiveJungleMob,nbt={Health:20.0f}] Var1 1
execute at @a[tag=IsPlaying] as @e[scores={Var1=..0},tag=InactiveJungleMob,distance=..15] at @s as @e[tag=InactiveJungleMob,distance=..5] run data merge entity @s {NoAI:0}
execute at @a[tag=IsPlaying] as @e[scores={Var1=..0},tag=InactiveJungleMob,distance=..15] at @s run tag @e[tag=InactiveJungleMob,distance=..5] remove Permanent
execute at @a[tag=IsPlaying] as @e[scores={Var1=..0},tag=InactiveJungleMob,distance=..15] at @s run tag @e[tag=InactiveJungleMob,distance=..5] add ActiveJungleMob
tag @e[tag=ActiveJungleMob] remove InactiveJungleMob
effect give @e[scores={Var1=..0},tag=InactiveJungleMob] instant_damage 1 10 true

#Life time
execute as @a[tag=IsPlaying] at @s run scoreboard players set @e[scores={Timer=38..},tag=ActiveJungleMob,distance=..30] Timer 0
execute as @e[scores={Timer=39..},tag=ActiveJungleMob] at @s as @e[tag=CoinsAS,distance=..5,limit=1,sort=nearest] at @s run teleport @s ~ ~-100 ~
execute as @e[scores={Timer=39..},tag=ActiveJungleMob] at @s run teleport @s ~ ~-100 ~
effect give @e[type=husk,tag=JungleMob] resistance 1 3 true

#Coins
tag @e[tag=CoinsAS] add NoJungleMob
execute as @e[tag=JungleMob] at @s run tag @e[tag=CoinsAS,distance=..3] remove NoJungleMob
execute at @e[tag=NoJungleMob] run summon item ~ ~ ~ {PickupDelay:32000,Tags:["CoinsItem"],Item:{id:"emerald",Count:1,Damage:0s}}
execute as @e[tag=NoJungleMob] at @s run scoreboard players set @e[type=item,tag=CoinsItem,distance=..3] Timer -1
kill @e[tag=NoJungleMob]
execute at @e[tag=CoinsItem] as @p[tag=IsPlaying,distance=..2] at @s run function hierarchy:game/mob/jungle/givecoins
