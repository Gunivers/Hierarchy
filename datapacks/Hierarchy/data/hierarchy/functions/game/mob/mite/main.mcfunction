execute at @e[type=armor_stand,scores={Timer=1},name=Blue] at @r[x=2000.5,y=100,z=2000.5,tag=IsPlaying,distance=100..] run summon endermite ~ 50 ~ {NoAI:1,Tags:["Permanent","Mob"],Attributes:[{Name:generic.followRange,Base:0}]}
execute as @e[type=endermite,scores={Timer=0..},tag=Mob] at @s run spreadplayers ~ ~ 10 50 false @s
scoreboard players set @e[type=endermite,scores={Timer=0..},tag=Mob] Timer -1
execute as @e[type=endermite,scores={Timer=..-400},tag=Mob] at @s run teleport @s ~ ~-1000 ~
kill @e[type=endermite,scores={Timer=..-400},tag=Mob]
execute as @a[x=2000.5,y=100,z=2000.5,gamemode=adventure,scores={InGame=1..},distance=100..] at @s run tag @e[type=endermite,tag=Mob,distance=..1] add MiteKilled
execute at @e[type=endermite,tag=MiteKilled] run summon item ~ ~ ~ {Item:{id:"gold_ingot",Damage:0,Count:1},Motion:[0.0,0.4,0.0],PickupDelay:999999,Tags:["CoinsEarned"]}
execute as @e[type=endermite,tag=MiteKilled] at @s run scoreboard players add @p[gamemode=adventure,tag=IsPlaying] Coins 5
execute as @e[type=endermite,tag=MiteKilled] at @s run scoreboard players add @p[gamemode=adventure,tag=IsPlaying] CoinsNumber 5
execute as @e[type=item,scores={Timer=9},tag=CoinsEarned] at @s run playsound entity.player.levelup record @a[distance=..5] ~ ~ ~ 1 2 1
execute as @e[type=endermite,tag=MiteKilled] at @s run playsound block.grass.break record @a[distance=..5] ~ ~ ~ 2 2 1
execute at @e[type=item,tag=CoinsEarned] run particle happy_villager ~ ~ ~ 0.2 0.2 0.2 0 1
execute as @e[type=endermite,tag=MiteKilled] at @s run particle block chorus_plant ~ ~0.1 ~ 0.2 0.2 0.2 1 20 force @a
kill @e[type=endermite,tag=MiteKilled]
effect give @e[type=endermite,tag=Mob] weakness 1 127 true
effect give @e[type=endermite,tag=Mob] resistance 1 127 true
