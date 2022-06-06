execute at @e[type=armor_stand,name=Blue,tag=Setting_Damage_Indicator,limit=1,sort=nearest] as @r[scores={Class=1..,InGame=1..}] at @s run function hierarchy:game/visual/hitdisp
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] as @r[scores={Class=1..,InGame=1..,UseTp=1..}] at @s run function hierarchy:game/visual/tp
execute at @e[type=armor_stand,name=Blue,tag=Setting_Ally_Indicator,limit=1,sort=nearest] as @r[scores={Class=1..,InGame=1..}] at @s run function hierarchy:game/visual/range

execute at @e[type=armor_stand,name=Blue,tag=Setting_Hats,limit=1,sort=nearest] as @r[scores={Class=1..,InGame=1..}] at @s run function hierarchy:game/visual/headblockwithhat
execute as @e[type=armor_stand,name=Blue,tag=!Setting_Hats,limit=1,sort=nearest] at @s at @s[tag=!Setting_Game_Started] as @r[scores={Class=1..,InGame=1..}] at @s run function hierarchy:game/visual/headblockwithhat
execute as @e[type=armor_stand,name=Blue,tag=!Setting_Hats,limit=1,sort=nearest] at @s at @s[tag=Setting_Game_Started] as @r[scores={Class=1..,InGame=1..}] at @s run function hierarchy:game/visual/headblockwithouthat
