scoreboard players add @e Timer 0
scoreboard players add @e[scores={Timer=0..}] Timer 1
scoreboard players remove @e[type=!player,scores={Timer=..-1}] Timer 1
scoreboard players set @e[scores={Timer=40..}] Timer 0
scoreboard players set @a[scores={Timer=..0,1=1..}] Timer 0