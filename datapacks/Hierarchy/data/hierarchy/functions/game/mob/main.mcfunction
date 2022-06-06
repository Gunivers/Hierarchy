execute if entity @e[type=armor_stand,name=Blue,tag=Setting_Minions,limit=1,sort=nearest] run function hierarchy:game/mob/minion/main
execute if entity @e[type=armor_stand,name=Blue,tag=Setting_Mites,limit=1,sort=nearest] run function hierarchy:game/mob/mite/main
execute if entity @e[type=armor_stand,name=Blue,tag=Setting_Jungle_Mobs,limit=1,sort=nearest] run function hierarchy:game/mob/jungle/main

execute as @e[type=armor_stand,name=Blue,tag=!Setting_Jungle_Mobs,limit=1,sort=nearest] at @s run kill @e[tag=JungleMob]
execute as @e[type=armor_stand,name=Blue,tag=!Setting_Jungle_Mobs,limit=1,sort=nearest] at @s run kill @e[tag=CoinsAS]
