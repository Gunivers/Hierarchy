tellraw @a[tag=Debug] ["",{"text":". Global/Main | As: "},{"selector":"@s"}]
function hierarchy:global/setting/main
function hierarchy:global/menu/main
function hierarchy:global/security/main
function hierarchy:global/timer/main
function hierarchy:global/lgdir/main
execute if entity @e[type=armor_stand,scores={Timer05=1},name=Blue] run function hierarchy:global/info/main
