tag @s remove GT1G-Buffer
tag @s[scores={PrivateSpell=1..}] add GT1G-Buffer
execute as @s[tag=!GT1G-Buffer] positioned ~ ~1.7 ~ run particle minecraft:smoke ^4 ^2 ^2 0 0 0 1 50 force
execute as @s[tag=!GT1G-Buffer] positioned ~ ~1.7 ~ run particle minecraft:smoke ^4 ^-2 ^2 0 0 0 1 50 force
execute as @s[tag=!GT1G-Buffer] positioned ~ ~1.7 ~ run particle minecraft:smoke ^-4 ^2 ^2 0 0 0 1 50 force
execute as @s[tag=!GT1G-Buffer] positioned ~ ~1.7 ~ run particle minecraft:smoke ^-4 ^-2 ^2 0 0 0 1 50 force
scoreboard players add @s[scores={PrivateSpell=..0}] PrivateSpell 1000
scoreboard players remove @s[tag=GT1G-Buffer] PrivateSpell 1000
playsound minecraft:entity.horse.armor record @a[distance=..30] ~ ~ ~ 2 1 1