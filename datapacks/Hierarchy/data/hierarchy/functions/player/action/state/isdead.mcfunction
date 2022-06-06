#Called by /Player/InGame

tag @s add Source

#Spell 1 Hunter Burner
execute as @s[team=Orange,scores={C2=1..,InGame=1..}] run effect give @a[team=Blue,tag=IsPlaying] instant_health 1 3 true
execute as @s[team=Blue,scores={C2=1..,InGame=1..}] run effect give @a[team=Orange,tag=IsPlaying] instant_health 1 3 true

title @a times 0 10 10

#Kill score
scoreboard players operation @a ID -= @s TouchID

scoreboard players add @p[scores={ID=0},tag=InGame] KillNumber 1
scoreboard players add @p[scores={ID=0},tag=InGame] KillStreak 1

execute if entity @a[scores={ID=0,LifeState=2..}] run function hierarchy:player/action/state/killmessage
execute unless entity @a[scores={ID=0,LifeState=2..}] run function hierarchy:player/action/state/deathmessage

#Scores
scoreboard players add @s TouchID 0
scoreboard players set @s[tag=InGame] KillStreak 0
scoreboard players add @s[tag=InGame] DeathNumber 1


execute as @p[scores={ID=0},tag=InGame] at @s run function hierarchy:player/action/state/maxkillstreak
execute as @p[scores={ID=0,KillStreak=2..},tag=InGame] at @s run function hierarchy:easter-egg/hat/getwithkillstreak
execute at @p[scores={Class=31..39,ID=0}] as @a[tag=Source] at @s run function hierarchy:easter-egg/hat/getaxeinhead
execute as @p[scores={ID=0,KillNumber=15..},tag=InGame] at @s run function hierarchy:easter-egg/hat/getdevilhorn
execute at @s[scores={EffScare=1..}] as @p[scores={ID=0},tag=InGame] at @s run function hierarchy:easter-egg/hat/getpumpkin

scoreboard players operation @a ID += @s TouchID

#Death soud
execute at @s[team=Blue] as @a[team=Orange] at @s run playsound entity.wither.spawn record @s ~ ~ ~
execute at @s[team=Orange] as @a[team=Blue] at @s run playsound entity.wither.spawn record @s ~ ~ ~
execute at @s[team=Blue] as @a[team=Blue] at @s run playsound entity.irongolem.death record @s ~ ~ ~
execute at @s[team=Orange] as @a[team=Orange] at @s run playsound entity.irongolem.death record @s ~ ~ ~

#Death effect
execute at @s run scoreboard players set @a[scores={EffInvulnerable=..2},distance=..5] EffInvulnerable 2
execute at @s[team=Blue] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;2062591],FadeColors:[I;0]}]}}}}
execute at @s[team=Orange] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;16737792],FadeColors:[I;0]}]}}}}

gamemode spectator @s[tag=InGame]

#Ace 
scoreboard players set @e[type=armor_stand,tag=Blue] Var1 0
execute as @a[tag=InGame] run scoreboard players add @e[type=armor_stand,tag=Blue] Var1 1
execute if entity @e[type=armor_stand,scores={Var1=4..},tag=!AceMessage] run function hierarchy:player/action/state/ace

#Who am I?
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_3,limit=1,sort=nearest] at @s run function hierarchy:player/action/state/wtf3

#Where am I?
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_8,limit=1,sort=nearest] at @s run function hierarchy:player/action/state/wtf8

scoreboard players set @s TouchID 0
scoreboard players set @s IsDead 0
scoreboard players set @s LifeState 0
tag @s remove Source
