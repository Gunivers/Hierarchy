# NAME: LGdir
# PATH: gunivers-lib:system/lgdir

# AUTHOR: Leirof

# VERSION: 3.0
# MINECRAFT: 1.13+

# NOTE: This system is just an example of what you can do with our library.
#       By executing this function on every pleyers, each time they will use a carrot_on_a_stick, a basic projectile will be shot.
#       It is recommended to create your own function/command-block system that reproduce this function to adapt it to your project.

# CODE:
#____________________________________________________________________________________________________

execute as @e[tag=DirShoot] at @s run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,Tags:["Projectile","DirLoad"]}

execute as @e[tag=DirShoot] at @s run tp @e[tag=Projectile,tag=!Old,limit=1,sort=nearest] @s
execute as @e[tag=DirShoot] at @s run tp @e[tag=Projectile,tag=!Old,limit=1,sort=nearest] ~ ~1.7 ~

execute as @e[tag=DirShoot] at @s run scoreboard players operation @e[tag=DirLoad,limit=1,sort=nearest] Class = @s Class
execute as @e[team=Blue,tag=DirShoot] at @s run scoreboard players operation @e[tag=DirLoad,limit=1,sort=nearest] Class *= Neg Constant

execute as @e[tag=DirShoot] at @s run scoreboard players operation @e[tag=DirLoad,limit=1,sort=nearest] ID = @s ID



execute as @e[tag=Projectile,tag=!Old] run function gunivers-lib:entity/vector/get_by_actual_orientation
tag @e[tag=Projectile] add Old

tag @e[tag=DirLoad] add DirMoving
tag @e remove DirLoad
tag @e remove DirHaveShoot
tag @e[tag=DirShoot] add DirHaveShoot
tag @e remove DirShoot

execute as @e[tag=DirMoving] at @s run function gunivers-lib:entity/move/by_vector
#

# execute as @e[tag=DirShoot,limit=1,sort=nearest] at @s run function hierarchy:global/lgdir/shoot
# execute as @e[tag=DirMoving,limit=1,sort=nearest] at @s run function hierarchy:global/lgdir/security
# execute as @e[scores={DirCollision=1..},tag=DirMoving,limit=1,sort=nearest] at @s run function hierarchy:global/lgdir/collisions
# execute as @e[tag=DirMoving,limit=1,sort=nearest] at @s run function hierarchy:global/lgdir/move



# execute as @e[tag=DirShoot,limit=1,sort=nearest] at @s run function gunivers-lib:entity/vector/get_by_actual_orientation

# tag @e[tag=DirLoad] add DirMoving
# tag @e remove DirLoad
# tag @e remove DirHaveShoot
# tag @e[tag=DirShoot] add DirHaveShoot
# tag @e remove DirShoot

# execute as @e[tag=DirMoving,limit=1,sort=nearest] at @s run function gunivers-lib:entity/move/by_vector


#execute @e[tag=DirMoving] ~ ~ ~ /particle fireworksSpark ~ ~1.7 ~ 0.1 0.1 0.1 0 3 force
#scoreboard players set @e[tag=DirMoving] DirCollision 1
