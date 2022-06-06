
execute at @s[team=Blue] at @a[team=Orange,tag=IsPlaying,limit=10,sort=nearest] run summon armor_stand ~ ~20 ~6 {NoGravity:1,Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,Tags:["MGB","InitMeteor","023B","023G","Projectile","Old","Blue","NotOrange"]}
execute at @s[team=Orange] at @a[team=Blue,tag=IsPlaying,limit=10,sort=nearest] run summon armor_stand ~ ~20 ~6 {NoGravity:1,Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,Tags:["MGB","InitMeteor","023R","023G","Projectile","Old","Orange","NotBlue"]}
execute at @s[team=Blue] at @a[team=Orange,tag=IsPlaying,limit=10,sort=nearest] run summon armor_stand ~ ~20 ~6 {NoGravity:1,Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,Tags:["MGB","InitMeteor","023B","023G","Projectile","Old","Blue","NotOrange"]}
execute at @s[team=Orange] at @a[team=Blue,tag=IsPlaying,limit=10,sort=nearest] run summon armor_stand ~ ~20 ~6 {NoGravity:1,Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,Tags:["MGB","InitMeteor","023R","023G","Projectile","Old","Orange","NotBlue"]}

scoreboard players set @e[type=armor_stand,tag=InitMeteor] Timer -186

scoreboard players set @e[type=armor_stand,tag=023B] Class -2
scoreboard players set @e[type=armor_stand,tag=023R] Class 2

scoreboard players set @e[type=armor_stand,tag=InitMeteor] VectorY -1000
scoreboard players set @e[type=armor_stand,tag=InitMeteor] VectorX 0
scoreboard players set @e[type=armor_stand,tag=InitMeteor] VectorZ -300
scoreboard players set @e[type=armor_stand,tag=InitMeteor] VectorSpeed 1600
scoreboard players set @e[type=armor_stand,tag=InitMeteor] Collision 1
tag @e[type=armor_stand,tag=InitMeteor] add DirMoving

scoreboard players operation @e[type=armor_stand,tag=InitMeteor] ID = @s ID

tag @e remove InitMeteor
