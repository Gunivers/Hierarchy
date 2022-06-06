playsound minecraft:block.stone_button.click_on record @a
tellraw @a ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> ","color":"none"},{"text":"WTF?! Who am I?","color":"green"}]
tag @a[tag=InGame] add RandomKit
execute if entity @a[tag=RandomKit] run function hierarchy:game/kit/random
scoreboard players set @a[tag=InGame] Spell1 0
scoreboard players set @a[tag=InGame] Spell2 0
scoreboard players set @a[tag=InGame] Spell3 0
