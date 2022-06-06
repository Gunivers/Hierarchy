execute as @e[type=snowball] run data merge entity @s {NoGravity:1}
kill @e[type=ender_pearl,scores={Timer=23..}]
kill @e[x=-4.5,y=64,z=1.5,type=!player,scores={Timer=39..},tag=!Permanent,distance=3..]
kill @e[type=snowball,scores={Timer=29..}]
execute as @e[type=chicken] at @s run teleport @s ~ -100 ~
kill @e[type=experience_bottle]
kill @e[type=potion]
kill @e[type=!player,scores={Timer=..-200},tag=!Permanent]
kill @e[type=item,scores={Timer=10..}]

kill @e[type=painting,scores={Timer=10..}]
kill @e[type=!player,name=unknown]

#Spell Entities
kill @e[type=armor_stand,scores={Timer=..-1000},tag=WI1G]
kill @e[type=armor_stand,scores={Timer=0..},tag=WI1G]
scoreboard players set @e[type=armor_stand,scores={Timer=0..},tag=361G] Timer -1
scoreboard players remove @e[type=armor_stand,scores={Timer=..-1},tag=361G] Timer 1

#Fall in void
execute as @a[gamemode=adventure,scores={InGame=1..},tag=InGame] at @s if block 0 ~ 0 bedrock run spawnpoint @p[distance=..1] ~ ~100 ~
execute as @a[gamemode=adventure,scores={InGame=1..},tag=InGame] at @s if block 0 ~ 0 bedrock run kill @p[distance=..1]
execute as @a[gamemode=adventure,tag=InLobby] at @s if block 0 ~ 0 bedrock as @p[distance=..1] at @s run teleport 5000 100 5000



