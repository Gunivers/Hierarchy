# Primary
execute as @e[type=arrow,scores={Class=1..}] at @s run particle block terracotta ~ ~ ~ 0 0 0 0 1 force @a
replaceitem entity @a[gamemode=adventure,scores={InGame=1..,Class=21..29,HaveBow=..0,Timer=5..}] container.17 arrow
clear @a[gamemode=adventure,scores={Class=21..29,HaveBow=..0,InGame=1..,Timer=5..}] spectral_arrow
replaceitem entity @a[gamemode=adventure,scores={InGame=1..,Class=21..29,HaveBow=..0,Timer=0..4}] container.17 spectral_arrow
scoreboard players set @a[scores={HaveBow=1..}] HaveBow 0
scoreboard players set @a[scores={Class=21..29,InGame=1..},nbt={SelectedItem:{id:"minecraft:bow"}}] HaveBow 1

execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_6,limit=1,sort=nearest] at @s run replaceitem entity @a[gamemode=adventure,scores={Class=21..29,EffSilencePrim=..0,HaveBow=..0,InGame=1..,UpgradedWeapon=0,UseBow=..0}] hotbar.0 bow{Unbreakable:1,Enchantments:[{id:"minecraft:power",lvl:127s},{id:"minecraft:infinity",lvl:1s}],display:{Name:"{\"text\":\"Basic Attack  0✸  0s\",\"color\":\"aqua\"}"}} 1
execute as @e[type=armor_stand,name=Blue,tag=!Game_WTF_6,limit=1,sort=nearest] at @s run replaceitem entity @a[gamemode=adventure,scores={Class=21..29,EffSilencePrim=..0,HaveBow=..0,InGame=1..,UpgradedWeapon=0,UseBow=..0}] hotbar.0 bow{Unbreakable:1,Enchantments:[{id:"minecraft:power",lvl:1s},{id:"minecraft:infinity",lvl:1s}],display:{Name:"{\"text\":\"Basic Attack  0✸  0s\",\"color\":\"aqua\"}"}} 1
execute as @e[type=arrow,scores={Class=..-1}] at @s run particle block lapis_block ~ ~ ~ 0 0 0 0 1 force @a

execute as @e[type=spectral_arrow] run data merge entity @s {NoGravity:1}

tag @e[type=arrow] add Projectile
tag @e[type=spectral_arrow] add Projectile

# Passive
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-0.6 ~ unless entity @e[tag=Glib_DoubleJump1,distance=..1] run summon boat ~ ~ ~ {NoGravity:1b,Type:"birch",Tags:["Glib_DoubleJump","Glib_DoubleJump1"]}
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-0.7 ~ unless entity @e[tag=Glib_DoubleJump2,distance=..1] run summon boat ~ ~ ~ {NoGravity:1b,Type:"birch",Tags:["Glib_DoubleJump","Glib_DoubleJump2"]}
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-0.8 ~ unless entity @e[tag=Glib_DoubleJump3,distance=..1] run summon boat ~ ~ ~ {NoGravity:1b,Type:"birch",Tags:["Glib_DoubleJump","Glib_DoubleJump3"]}
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-0.9 ~ unless entity @e[tag=Glib_DoubleJump4,distance=..1] run summon boat ~ ~ ~ {NoGravity:1b,Type:"birch",Tags:["Glib_DoubleJump","Glib_DoubleJump4"]}
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-1.0 ~ unless entity @e[tag=Glib_DoubleJump5,distance=..1] run summon boat ~ ~ ~ {NoGravity:1b,Type:"birch",Tags:["Glib_DoubleJump","Glib_DoubleJump5"]}

execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-0.6 ~ run tp @e[tag=Glib_DoubleJump1,limit=1,distance=..1] ~ ~ ~
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-0.7 ~ run tp @e[tag=Glib_DoubleJump2,limit=1,distance=..1] ~ ~ ~
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-0.8 ~ run tp @e[tag=Glib_DoubleJump3,limit=1,distance=..1] ~ ~ ~
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-0.9 ~ run tp @e[tag=Glib_DoubleJump4,limit=1,distance=..1] ~ ~ ~
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-1.0 ~ run tp @e[tag=Glib_DoubleJump5,limit=1,distance=..1] ~ ~ ~

scoreboard players set @a[scores={Glib_Jump=15..}] Glib_Jump 0
kill @e[tag=Glib_DoubleJump,tag=!Glib_DoubleJump_Active]
tag @e[tag=Glib_DoubleJump] remove Glib_DoubleJump_Actives
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-0.6 ~ run tag @e[tag=Glib_DoubleJump1,limit=1,distance=..1] add Glib_DoubleJump_Active
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-0.7 ~ run tag @e[tag=Glib_DoubleJump2,limit=1,distance=..1] add Glib_DoubleJump_Active
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-0.8 ~ run tag @e[tag=Glib_DoubleJump3,limit=1,distance=..1] add Glib_DoubleJump_Active
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-0.9 ~ run tag @e[tag=Glib_DoubleJump4,limit=1,distance=..1] add Glib_DoubleJump_Active
execute as @a[tag=IsPlaying,scores={Glib_Jump=1..5,Class=21..26}] at @s positioned ~ ~-1.0 ~ run tag @e[tag=Glib_DoubleJump5,limit=1,distance=..1] add Glib_DoubleJump_Active
execute as @e[tag=Glib_DoubleJump,tag=!Glib_DoubleJump_Active] at @s run tp @s ~ 0 ~
scoreboard players add @a[scores={Glib_Jump=1..}] Glib_Jump 1
execute as @a[tag=IsPlaying,scores={Glib_Jump=5,Class=21..26}] at @s run particle cloud ~ ~ ~ 0.3 0 0.5 0.05 15

#scoreboard players set @a[scores={Glib_Jump=15..}] Glib_Jump 0
#kill @e[tag=Glib_DoubleJump]
#execute as @a[tag=IsPlaying,scores={Glib_Jump=1..,Class=21..26}] at @s run summon boat ~ ~-0.5625 ~ {NoGravity:1b,Type:"birch",Tags:["Glib_DoubleJump"]}
#execute as @a[tag=IsPlaying,scores={Glib_Jump=5..,Class=21..26}] at @s run particle cloud ~ ~ ~ 0.2 0 0.2 0 1
# execute as @a[tag=IsPlaying,scores={Glib_Jump=1..,Class=21..26}] at @s run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Tags:["Glib_DoubleJump"],Passengers:[{id:"minecraft:shulker",Tags:["Glib_DoubleJump"],Silent:1b,NoAI:1b,CanPickUpLoot:0b,AttachFace:0b}]}
#execute as @a[tag=IsPlaying,scores={Class=21..26}] run effect give @s jump_boost 1 1 true
#scoreboard players add @a[scores={Glib_Jump=1..}] Glib_Jump 1

# Hero
execute if entity @a[scores={Class=21},tag=IsPlaying] run function hierarchy:game/kit/hunter/time/main
execute if entity @a[scores={Class=22},tag=IsPlaying] run function hierarchy:game/kit/hunter/burner/main
execute if entity @a[scores={Class=23},tag=IsPlaying] run function hierarchy:game/kit/hunter/thunder/main
execute if entity @a[scores={Class=24},tag=IsPlaying] run function hierarchy:game/kit/hunter/freezer/main
execute if entity @a[scores={Class=25},tag=IsPlaying] run function hierarchy:game/kit/hunter/wind/main
execute if entity @a[scores={Class=26},tag=IsPlaying] run function hierarchy:game/kit/hunter/invoker/main
