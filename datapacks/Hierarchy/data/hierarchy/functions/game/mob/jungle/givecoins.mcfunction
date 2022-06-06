scoreboard players add @s Coins 100
scoreboard players add @s CoinsNumber 100
give @s ghast_tear{display:{Name:"Legendary Potion"}}
playsound entity.player.levelup record @a[distance=..5] ~ ~ ~ 1 2 1
execute at @e[tag=CoinsItem,distance=..3,limit=1,sort=nearest] run particle happy_villager ~ ~0.1 ~ 0.2 0.2 0.2 0 20

data merge entity @e[tag=CoinsItem,distance=..3,limit=1,sort=nearest] {Motion:[0.0,0.4,0.0]}
scoreboard players set @e[tag=CoinsItem,distance=..3,limit=1,sort=nearest] Timer -195
tag @e[tag=CoinsItem,distance=..3,limit=1,sort=nearest] remove CoinsItem
