#Execute a l'emplacement de spawn
scoreboard players set @e[type=armor_stand,tag=Blue] Var1 0
execute as @e[tag=InactiveJungleMob,distance=..5] at @s run scoreboard players set @e[type=armor_stand,tag=Blue] Var1 1

execute as @e[type=armor_stand,scores={Var1=0},tag=Blue] run summon husk 2993 109.1 3072 {Rotation:[180.0f,0.0f],Tags:["IsPlaying","AffectByBlue","AffectByOrange","Permanent","JungleMob","InactiveJungleMob"],Passengers:[{id:"armor_stand",Invisible:1,Marker:1,Tags:["Permanent","CoinsAS"]}],IsVillager:0,IsBaby:0,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{ench:[{id:16,lvl:4},{id:19,lvl:1}]}},{}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:20},{Name:generic.followRange,Base:32},{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0.25}],Health:20.0f,NoAI:1}
execute as @e[type=armor_stand,scores={Var1=0},tag=Blue] run summon stray 2992 109.1 3070 {Rotation:[180.0f,0.0f],Tags:["IsPlaying","AffectByBlue","AffectByOrange","Permanent","JungleMob","InactiveJungleMob"],ArmorItems:[{},{},{},{id:"skull",Damage:3s,Count:1,tag:{SkullOwner:"MHF_Stray"}}],HandItems:[{id:"minecraft:bow",Count:1b,tag:{ench:[{id:34,lvl:1}]}},{}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:20},{Name:generic.followRange,Base:32},{Name:generic.movementSpeed,Base:0.2}],Health:20.0f,NoAI:1}
execute as @e[type=armor_stand,scores={Var1=0},tag=Blue] run summon stray 2994 109.1 3070 {Rotation:[180.0f,0.0f],Tags:["IsPlaying","AffectByBlue","AffectByOrange","Permanent","JungleMob","InactiveJungleMob"],ArmorItems:[{},{},{},{id:"skull",Damage:3s,Count:1,tag:{SkullOwner:"MHF_Stray"}}],HandItems:[{id:"minecraft:bow",Count:1b,tag:{ench:[{id:34,lvl:1}]}},{}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:20},{Name:generic.followRange,Base:32},{Name:generic.movementSpeed,Base:0.2}],Health:20.0f,NoAI:1}

tag @e[type=armor_stand,tag=Orange] remove SpawnJungleOrange