scoreboard players set @a[scores={Back=20..}] EffSilence 2
replaceitem entity @a[scores={Back=1..,InGame=1..}] hotbar.8 gray_dye{display:{Name:"Back to base, don't move!"}} 1
scoreboard players set @a[scores={Back=1..,IsWalking=20..}] Back 0
scoreboard players add @a[scores={Back=1..}] Back 1
execute at @a[scores={Back=10..}] run particle portal ~ ~1 ~ 0.1 0.5 0.1 0 1
execute at @a[scores={Back=120..}] run particle large_smoke ~ ~1.5 ~ 0.1 0.1 0.1 0 1
effect give @a[scores={Back=1..}] nausea 4 0 true
execute as @a[scores={Back=5}] at @s run playsound block.portal.travel record @p ~ ~ ~ 2 2 1
scoreboard players set @a[scores={Back=161..}] Back 0
scoreboard players set @a[scores={Back=1..,HaveObjective=1..}] Back 0
scoreboard players set @a[scores={Back=1..,TakeDamage=1..}] Back 0

execute as @a[scores={Back=140..141}] at @s run playsound entity.endermen.teleport record @a[distance=..15]

effect give @a[scores={Back=140..,InGame=1..}] regeneration 2 127 true
effect give @a[scores={Back=140..,InGame=1..}] resistance 5 100 true
scoreboard players set @a[scores={Back=140..,InGame=1..}] Mana 300

effect give @a[scores={Back=140,Class=1..9,InGame=1..}] health_boost 999999 9 true
effect give @a[scores={Back=140,Class=11..19,InGame=1..}] health_boost 999999 4 true
effect give @a[scores={Back=140,Class=31..39,InGame=1..}] health_boost 999999 9 true

scoreboard players set @a[scores={Back=1..}] Var1 140
execute as @a[scores={Back=1..}] run scoreboard players operation @s Var1 -= @s Back
execute as @a[scores={Back=1..}] run scoreboard players operation @s Var1 /= 20 Constant
scoreboard players add @a[scores={Back=1..}] Var1 1
execute as @a[scores={Back=1..}] run title @s actionbar {"text":">>","color":"dark_green","bold":"true","extra":[{"text":" Returning to your Base ","color":"green","bold":"false"},{"score":{"name":"@s","objective":"Var1"}},{"text":" Don't Move! ","color":"green","bold":"false"},{"text":"<<"}]}


