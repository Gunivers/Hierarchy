#Join current game
tag @a[tag=Join] add Ready
execute as @a[team=!Blue,tag=Join] run team join Random @s[team=!Orange]
title @a times 0 10 10
function hierarchy:game/team/random
tag @a[scores={Class=..0},tag=Join] add RandomKit
tag @a[scores={InGame=..-1},tag=Join] add RandomKit
function hierarchy:game/kit/random
execute as @a[team=Orange,scores={Class=1..,InGame=0},tag=Join] at @s run teleport @r[team=Orange,tag=InGame,distance=100..]
execute as @a[team=Blue,scores={Class=1..,InGame=0},tag=Join] at @s run teleport @r[team=Blue,tag=InGame,distance=100..]
scoreboard players set @a[team=Orange,scores={Class=1..,InGame=0},tag=Join] LifeState 0
scoreboard players set @a[team=Blue,scores={Class=1..,InGame=0},tag=Join] LifeState 0
gamemode spectator @a[team=Blue,scores={Class=1..,InGame=0},tag=Join]
scoreboard players set @a[team=Orange,scores={Class=1..,InGame=0},tag=Join] InGame 1
scoreboard players set @a[team=Blue,scores={Class=1..,InGame=0},tag=Join] InGame 1
tag @e remove Join
