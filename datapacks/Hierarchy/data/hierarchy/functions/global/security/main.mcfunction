scoreboard players add @e 1 0
scoreboard players add @e Reset 0
execute as @e[scores={1=0}] at @s run function hierarchy:global/security/init
execute as @e[type=armor_stand,name=Blue,scores={Reset=0}] at @s run function hierarchy:global/security/reset

execute if entity @e[type=armor_stand,scores={Timer=1},name=Blue,limit=1,sort=nearest] run function hierarchy:global/security/entityrespawn
function hierarchy:global/security/entityclear
execute if entity @e[type=armor_stand,scores={Timer05=1},name=Blue,limit=1,sort=nearest] run function hierarchy:global/security/playerset
execute if entity @e[type=armor_stand,scores={Timer=1},name=Blue,limit=1,sort=nearest] run function hierarchy:global/security/checklocation


tag @a remove OffSide
execute as @a[gamemode=adventure,tag=IsPlaying] at @s if block ~ ~ ~ structure_void run tag @s add OffSide
execute as @a[gamemode=adventure,tag=IsPlaying] at @s if block ~ ~-1 ~ structure_void run tag @s add OffSide
execute as @a[gamemode=adventure,tag=IsPlaying] at @s if block ~ ~-2 ~ structure_void run tag @s add OffSide
execute if entity @a[tag=OffSide] run function hierarchy:global/security/offside
function hierarchy:global/security/suffocate

function hierarchy:global/security/check_source_entites