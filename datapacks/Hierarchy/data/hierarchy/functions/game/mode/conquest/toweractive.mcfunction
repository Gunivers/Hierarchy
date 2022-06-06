
#Damage
execute as @e[scores={Timer=3},tag=OrangeTowerActive] at @s positioned ~ ~5 ~ run scoreboard players set @e[team=Blue,tag=IsPlaying,distance=..7,limit=1,sort=nearest] EffDamage 1001
execute as @e[scores={Timer=23},tag=OrangeTowerActive] at @s positioned ~ ~5 ~ run scoreboard players set @e[team=Blue,tag=IsPlaying,distance=..7,limit=1,sort=nearest] EffDamage 1001
execute as @e[scores={Timer=3},tag=BlueTowerActive] at @s positioned ~ ~5 ~ run scoreboard players set @e[team=Orange,tag=IsPlaying,distance=..7,limit=1,sort=nearest] EffDamage 1001
execute as @e[scores={Timer=23},tag=BlueTowerActive] at @s positioned ~ ~5 ~ run scoreboard players set @e[team=Orange,tag=IsPlaying,distance=..7,limit=1,sort=nearest] EffDamage 1001

#Charge Particles
execute at @e[scores={Timer=3},tag=OrangeTowerActive] positioned ~ ~10 ~ run particle enchant ~ ~ ~ 0 0 0 1 200 force
execute at @e[scores={Timer=23},tag=OrangeTowerActive] positioned ~ ~10 ~ run particle enchant ~ ~ ~ 0 0 0 1 200 force
execute at @e[scores={Timer=3},tag=BlueTowerActive] positioned ~ ~10 ~ run particle enchant ~ ~ ~ 0 0 0 1 200 force
execute at @e[scores={Timer=23},tag=BlueTowerActive] positioned ~ ~10 ~ run particle enchant ~ ~ ~ 0 0 0 1 200 force

#Attack Particles
execute at @e[scores={Timer=3},tag=OrangeTowerActive] positioned ~ ~5 ~ at @e[team=Blue,tag=IsPlaying,distance=..7,limit=1,sort=nearest] run particle cloud ~ ~ ~ 0.5 1 0.5 0 50 force
execute at @e[scores={Timer=23},tag=OrangeTowerActive] positioned ~ ~5 ~ at @e[team=Blue,tag=IsPlaying,distance=..7,limit=1,sort=nearest] run particle cloud ~ ~ ~ 0.5 1 0.5 0 50 force
execute at @e[scores={Timer=3},tag=BlueTowerActive] positioned ~ ~5 ~ at @e[team=Orange,tag=IsPlaying,distance=..7,limit=1,sort=nearest] run particle cloud ~ ~ ~ 0.5 1 0.5 0 50 force
execute at @e[scores={Timer=23},tag=BlueTowerActive] positioned ~ ~5 ~ at @e[team=Orange,tag=IsPlaying,distance=..7,limit=1,sort=nearest] run particle cloud ~ ~ ~ 0.5 1 0.5 0 50 force

#Attack Particles on player
execute at @e[scores={Timer=3},tag=OrangeTowerActive] positioned ~ ~5 ~ at @e[team=Blue,tag=IsPlaying,distance=..7,limit=1,sort=nearest] positioned ~ ~-5 ~ at @e[scores={Timer=3},tag=OrangeTowerActive,distance=..7] positioned ~ ~5 ~ run particle cloud ~ ~5 ~ 0.5 0.5 0.5 0 50 force
execute at @e[scores={Timer=23},tag=OrangeTowerActive] positioned ~ ~5 ~ at @e[team=Blue,tag=IsPlaying,distance=..7,limit=1,sort=nearest] positioned ~ ~-5 ~ at @e[scores={Timer=23},tag=OrangeTowerActive,distance=..7] positioned ~ ~5 ~ run particle cloud ~ ~5 ~ 0.5 0.5 0.5 0 50 force
execute at @e[scores={Timer=3},tag=BlueTowerActive] positioned ~ ~5 ~ at @e[team=Orange,tag=IsPlaying,distance=..7,limit=1,sort=nearest] positioned ~ ~-5 ~ at @e[scores={Timer=3},tag=BlueTowerActive,distance=..7] positioned ~ ~5 ~ run particle cloud ~ ~5 ~ 0.5 0.5 0.5 0 50 force
execute at @e[scores={Timer=23},tag=BlueTowerActive] positioned ~ ~5 ~ at @e[team=Orange,tag=IsPlaying,distance=..7,limit=1,sort=nearest] positioned ~ ~-5 ~ at @e[scores={Timer=23},tag=BlueTowerActive,distance=..7] positioned ~ ~5 ~ run particle cloud ~ ~5 ~ 0.5 0.5 0.5 0 50 force

#Attack PSound
execute at @e[scores={Timer=3},tag=OrangeTowerActive] positioned ~ ~5 ~ at @e[team=Blue,tag=IsPlaying,distance=..7,limit=1,sort=nearest] positioned ~ ~-5 ~ as @e[scores={Timer=3},tag=OrangeTowerActive,distance=..7] at @s positioned ~ ~5 ~ run playsound entity.blaze.shoot record @a[distance=..30] ~ ~ ~ 2 2 1
execute at @e[scores={Timer=23},tag=OrangeTowerActive] positioned ~ ~5 ~ at @e[team=Blue,tag=IsPlaying,distance=..7,limit=1,sort=nearest] positioned ~ ~-5 ~ as @e[scores={Timer=23},tag=OrangeTowerActive,distance=..7] at @s positioned ~ ~5 ~ run playsound entity.blaze.shoot record @a[distance=..30] ~ ~ ~ 2 2 1
execute at @e[scores={Timer=3},tag=BlueTowerActive] positioned ~ ~5 ~ at @e[team=Orange,tag=IsPlaying,distance=..7,limit=1,sort=nearest] positioned ~ ~-5 ~ as @e[scores={Timer=3},tag=BlueTowerActive,distance=..7] at @s positioned ~ ~5 ~ run playsound entity.blaze.shoot record @a[distance=..30] ~ ~ ~ 2 2 1
execute at @e[scores={Timer=23},tag=BlueTowerActive] positioned ~ ~5 ~ at @e[team=Orange,tag=IsPlaying,distance=..7,limit=1,sort=nearest] positioned ~ ~-5 ~ as @e[scores={Timer=23},tag=BlueTowerActive,distance=..7] at @s positioned ~ ~5 ~ run playsound entity.blaze.shoot record @a[distance=..30] ~ ~ ~ 2 2 1
