execute at @e[tag=GB2G,tag=Rot11] run particle flame ~ ~-200 ~ 0 0 0 0.01 3 force
execute at @e[tag=GB2G,tag=Rot11] run particle flame ~ ~-199 ~ 0 0 0 0.01 3 force
execute at @e[tag=GB2G,tag=Rot11] run particle flame ~ ~-201 ~ 0 0 0 0.01 3 force

execute at @e[tag=GB2G,tag=Rot10] run particle flame ~ ~-198 ~ 0 0 0 0.01 3 force
execute at @e[tag=GB2G,tag=Rot10] run particle flame ~ ~-197 ~ 0 0 0 0.01 3 force

execute at @e[tag=GB2G,tag=Rot9] run particle flame ~ ~-202 ~ 0 0 0 0.01 3 force
execute at @e[tag=GB2G,tag=Rot9] run particle flame ~ ~-203 ~ 0 0 0 0.01 3 force

execute at @e[tag=GB2G,tag=Rot9] run particle flame ~ ~-196 ~ 0 0 0 0.01 3 force
execute at @e[tag=GB2G,tag=Rot9] run particle flame ~ ~-204 ~ 0 0 0 0.01 3 force

execute at @e[tag=GB2G,tag=Rot8] run particle flame ~ ~-196 ~ 0 0 0 0.01 3 force
execute at @e[tag=GB2G,tag=Rot8] run particle flame ~ ~-204 ~ 0 0 0 0.01 3 force

execute at @e[tag=GB2G,tag=Rot7] run particle flame ~ ~-195 ~ 0 0 0 0.01 3 force
execute at @e[tag=GB2G,tag=Rot7] run particle flame ~ ~-205 ~ 0 0 0 0.01 3 force

execute at @e[tag=GB2G,tag=Rot6] run particle flame ~ ~-195 ~ 0 0 0 0.01 3 force
execute at @e[tag=GB2G,tag=Rot6] run particle flame ~ ~-205 ~ 0 0 0 0.01 3 force

execute at @e[tag=GB2G,tag=Rot5] run particle flame ~ ~-194.5 ~ 0 0 0 0.01 3 force
execute at @e[tag=GB2G,tag=Rot5] run particle flame ~ ~-205.5 ~ 0 0 0 0.01 3 force

execute at @e[tag=GB2G,tag=Rot3] run particle flame ~ ~-194.5 ~ 0 0 0 0.01 2 force
execute at @e[tag=GB2G,tag=Rot3] run particle flame ~ ~-205.5 ~ 0 0 0 0.01 2 force


execute at @e[tag=GB2G,tag=Rot2] run particle flame ~ ~-194 ~ 0 0 0 0.01 1 force
execute at @e[tag=GB2G,tag=Rot2] run particle flame ~ ~-206 ~ 0 0 0 0.01 1 force

execute at @e[tag=GB2G,tag=Rot0] run particle flame ~ ~-194 ~ 0 0 0 0.01 1 force
execute at @e[tag=GB2G,tag=Rot0] run particle flame ~ ~-206 ~ 0 0 0 0.01 1 force


execute at @e[tag=GB2G,tag=Rot0] run particle smoke ~ ~-200 ~ 3 3 3 0 10 force

execute at @e[tag=GB2G,tag=Rot0,scores={Timer05=1}] positioned ~ ~-200 ~ run playsound minecraft:block.fire.ambient record @a[distance=..30] ~ ~ ~ 2 2 1

execute as @e[tag=Rot] at @s run tp @s ~ ~ ~ ~13.5 ~


execute at @e[tag=GB2R,tag=Rot0] positioned ~ ~-200 ~ positioned ^-3 ^-1 ^2 run tag @e[type=!player,scores={Class=..-1},tag=Projectile,distance=..9] add KillBlueProjectile
execute at @e[tag=GB2B,tag=Rot0] positioned ~ ~-200 ~ positioned ^-3 ^-1 ^2 run tag @e[type=!player,scores={Class=1..},tag=Projectile,distance=..9] add KillOrangeProjectile

tag @e[tag=KillBlueProjectile] add KillProjectile
tag @e[tag=KillOrangeProjectile] add KillProjectile

execute at @e[tag=KillProjectile] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.3 10 force
execute at @e[tag=KillProjectile] run playsound minecraft:block.anvil.land record @a[distance=..30] ~ ~ ~ 2 2 1
kill @e[tag=KillProjectile]
