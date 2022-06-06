function hierarchy:game/team/main
function hierarchy:game/map/main
function hierarchy:game/mode/main

execute if entity @a[tag=IsPlaying] run function hierarchy:game/mob/main
execute if entity @a[tag=IsPlaying] run function hierarchy:game/book/main

execute as @e[type=armor_stand,scores={Timer=1},name=Blue] run scoreboard players remove @e[type=armor_stand,tag=Data] Score 1
execute if entity @e[type=armor_stand,scores={Timer05=1},name=Blue,limit=1,sort=nearest] run function hierarchy:game/detect-stop

execute if entity @a[tag=Join] run function hierarchy:game/join
