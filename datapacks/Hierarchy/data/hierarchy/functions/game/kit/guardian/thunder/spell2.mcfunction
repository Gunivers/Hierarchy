execute at @s[team=Blue] run effect give @e[tag=AffectByOrange,distance=..4] resistance 2 100 true
execute at @s[team=Blue] run summon lightning_bolt
execute at @s[team=Blue] run scoreboard players operation @a[tag=AffectByBlue,distance=..3] TouchID = @s ID
execute at @s[team=Orange] run effect give @e[tag=AffectByBlue,distance=..4] resistance 2 100 true
execute at @s[team=Orange] run summon lightning_bolt
execute at @s[team=Orange] run scoreboard players operation @a[tag=AffectByOrange,distance=..3] TouchID = @s ID
