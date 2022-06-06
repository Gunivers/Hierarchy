tag @a remove IsDead
tag @a[scores={IsDead=1..}] add IsDead
execute as @a[tag=IsDead] at @s run function hierarchy:player/action/state/isdead

tag @e[type=armor_stand,tag=Data] remove AceMessage

execute if entity @a[scores={LifeState=400}] run function hierarchy:player/action/state/tips
execute if entity @a[scores={LifeState=..400}] run function hierarchy:player/action/state/respawn
function hierarchy:player/action/state/outside
function hierarchy:player/action/state/jungle
execute unless entity @e[type=armor_stand,scores={Class=4},name=Blue] unless entity @e[type=armor_stand,scores={Class=0},name=Blue] run function hierarchy:player/action/state/base
