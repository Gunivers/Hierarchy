scoreboard players set @a[scores={HaveUsedBow=40..}] HaveUsedBow 0
scoreboard players add @a[scores={HaveUsedBow=1..}] HaveUsedBow 1
scoreboard players set @a[scores={UseBow=2}] HaveUsedBow 1
execute as @e[type=arrow,scores={Class=1..}] run data merge entity @s {NoGravity:1}
execute as @e[type=arrow,scores={Class=..-1}] run data merge entity @s {NoGravity:1}

execute as @a[scores={InGame=1..,UseBow=2}] at @s run scoreboard players operation @e[type=arrow,distance=..10,limit=1,sort=nearest] Class = @p[scores={InGame=1..,UseBow=2},distance=..10] Class
execute as @a[team=Blue,scores={InGame=1..,UseBow=2}] at @s run scoreboard players operation @e[type=arrow,distance=..10,limit=1,sort=nearest] Class *= Neg Constant

execute as @e[type=arrow,scores={Class=1..}] at @s run scoreboard players operation @a[team=Blue,distance=..4] TouchBy = @e[type=arrow,scores={Class=1..},distance=..1,limit=1,sort=nearest] Class
execute as @e[type=arrow,scores={Class=..-1}] at @s run scoreboard players operation @a[team=Orange,distance=..4] TouchBy = @e[type=arrow,scores={Class=..-1},distance=..1,limit=1,sort=nearest] Class
execute as @e[type=arrow,scores={Class=..-1}] at @s run scoreboard players operation @a[team=Orange,scores={TouchBy=..-1},distance=..4] TouchBy *= Neg Constant

clear @a[scores={UseBow=1..}] bow
replaceitem entity @a[scores={Class=21..29,LifeState=500..,UseBow=1..}] hotbar.0 gunpowder{display:{Name:"Cooldown"},AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDMost:84053,UUIDLeast:137737},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDMost:32387,UUIDLeast:165141}]} 1
