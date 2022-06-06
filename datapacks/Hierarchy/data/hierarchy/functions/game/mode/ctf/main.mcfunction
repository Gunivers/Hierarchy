function hierarchy:game/mode/conquest/noconquest

#Special
execute at @e[type=armor_stand,scores={Class=1},name=Blue] as @e[type=armor_stand,scores={Class=0},name=Orange] at @s run function hierarchy:game/mode/ctf/river/main
execute at @e[type=armor_stand,scores={Class=1},name=Blue] as @e[type=armor_stand,scores={Class=1},name=Orange] at @s run function hierarchy:game/mode/ctf/arena/main
execute at @e[type=armor_stand,scores={Class=1},name=Blue] as @e[type=armor_stand,scores={Class=2},name=Orange] at @s run function hierarchy:game/mode/ctf/ruins/main
execute at @e[type=armor_stand,scores={Class=1},name=Blue] as @e[type=armor_stand,scores={Class=3},name=Orange] at @s run function hierarchy:game/mode/ctf/infection/main

scoreboard players add @e[x=0.5,y=65,z=0.5,type=armor_stand,scores={HaveObjective=..0},distance=..10] HaveObjective 1
execute as @r[scores={HaveObjective=1..},tag=AffectByBlue] run scoreboard players set @e[type=armor_stand,name=Blue] HaveObjective -1
execute as @r[scores={HaveObjective=1..},tag=AffectByOrange] run scoreboard players set @e[type=armor_stand,name=Orange] HaveObjective -1
execute as @r[scores={HaveObjective=1..},tag=AffectByBlue] at @s run scoreboard players set @a[tag=AffectByBlue,distance=1..] HaveObjective 0
execute as @r[scores={HaveObjective=1..},tag=AffectByOrange] at @s run scoreboard players set @a[tag=AffectByOrange,distance=1..] HaveObjective 0
execute as @a[scores={HaveObjective=2..},tag=AffectByOrange] run tellraw @a[tag=InGame] ["",{"selector":"@s","color":"blue","bold":true},{"text":" took the orange flag!","color":"gold","bold":true}]
execute as @a[scores={HaveObjective=2..},tag=AffectByBlue] run tellraw @a[tag=InGame] ["",{"selector":"@s","color":"gold","bold":true},{"text":" took the blue flag!","color":"blue","bold":true}]
effect give @a[scores={HaveObjective=2..},tag=IsPlaying] resistance 1 100 true
execute at @a[scores={HaveObjective=2..},tag=AffectByOrange] run summon firework_rocket ~ ~0 ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[11519],FadeColors:[2437522,6719955]}]}}}}
execute at @a[scores={HaveObjective=2..},tag=AffectByBlue] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[16734464],FadeColors:[11743532]}]}}}}
scoreboard players set @a[scores={HaveObjective=2..}] HaveObjective 1
execute as @a[scores={HaveObjective=..-1},tag=AffectByOrange] run tellraw @a[tag=InGame] ["",{"selector":"@s","color":"blue","bold":true},{"text":" captured the orange flag!","color":"gold","bold":true}]
execute as @a[scores={HaveObjective=..-1},tag=AffectByBlue] run tellraw @a[tag=InGame] ["",{"selector":"@s","color":"gold","bold":true},{"text":" captured the blue flag!","color":"blue","bold":true}]
effect give @a[scores={HaveObjective=..-1},tag=IsPlaying] resistance 1 100 true
execute at @a[scores={HaveObjective=..-1},tag=AffectByOrange] run summon firework_rocket ~ ~0 ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[11519],FadeColors:[2437522,6719955]}]}}}}
execute at @a[scores={HaveObjective=..-1},tag=AffectByBlue] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:fireworks,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Colors:[16734464],FadeColors:[11743532]}]}}}}
execute as @p[scores={HaveObjective=..-1},tag=AffectByBlue] run scoreboard players remove @e[type=armor_stand,name=Blue] Score 10
execute as @p[scores={HaveObjective=..-1},tag=AffectByBlue] run scoreboard players add @e[type=armor_stand,name=Orange] Score 10
execute as @p[scores={HaveObjective=..-1},tag=AffectByOrange] run scoreboard players remove @e[type=armor_stand,name=Orange] Score 10
execute as @p[scores={HaveObjective=..-1},tag=AffectByOrange] run scoreboard players add @e[type=armor_stand,name=Blue] Score 10

replaceitem entity @a[team=Orange,scores={HaveObjective=1..}] armor.head blue_banner 1
replaceitem entity @a[team=Blue,scores={HaveObjective=1..}] armor.head orange_banner 1


scoreboard players set @a[scores={HaveObjective=..-1}] HaveObjective 0
effect give @a[scores={HaveObjective=1..}] glowing 1 1 true
effect give @a[scores={HaveObjective=1..}] slowness 1 0 true
scoreboard players set @a[scores={HaveObjective=1..}] EffNoTp 5
scoreboard players set @a[scores={HaveObjective=1..}] EffNoMove 5
