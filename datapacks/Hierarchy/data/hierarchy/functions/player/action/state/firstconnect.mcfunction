#Called by /Player/Main
team join NoScoreDisp @a[scores={1=..0}]
scoreboard players set @a[scores={1=..0,Timer=0..}] Timer -1
scoreboard players set @a[scores={Timer=..-200}] Timer -1
scoreboard players remove @a[scores={1=..0}] Timer 1
title @a[scores={1=..0}] times 0 10 10
title @a[scores={1=..0,Timer=-20..}] title [{"text":"            Gunivers                            ","color":"gold","underlined":"false","bold":"false"}]
title @a[scores={1=..0,Timer=-20..-19}] subtitle [{"text":"Presents              ","color":"gray","bold":"false"}]
teleport @a[scores={1=..0,Timer=-4..-3}] 5000 120 4980 0 20
title @a[scores={1=..0,Timer=-40}] title [{"text":"H","color":"gold","underlined":"false","bold":"false"}]
title @a[scores={1=..0,Timer=-41}] title [{"text":"Hi","color":"gold","underlined":"false","bold":"false"}]
title @a[scores={1=..0,Timer=-42}] title [{"text":"Hie","color":"gold","underlined":"false","bold":"false"}]
title @a[scores={1=..0,Timer=-43}] title [{"text":"Hier","color":"gold","underlined":"false","bold":"false"}]
title @a[scores={1=..0,Timer=-44}] title [{"text":"Hiera","color":"gold","underlined":"false","bold":"false"}]
title @a[scores={1=..0,Timer=-45}] title [{"text":"Hierar","color":"gold","underlined":"false","bold":"false"}]
title @a[scores={1=..0,Timer=-46}] title [{"text":"Hierarc","color":"gold","underlined":"false","bold":"false"}]
title @a[scores={1=..0,Timer=-47}] title [{"text":"Hierarch","color":"gold","underlined":"false","bold":"false"}]
title @a[scores={1=..0,Timer=-60..-48}] title [{"text":"Hierarchy","color":"gold","underlined":"false","bold":"false"}]
title @a[scores={1=..0,Timer=-50..-40}] subtitle [{"text":"","color":"gray","bold":"false"}]
title @a[scores={1=..0,Timer=-200..-100}] subtitle [{"text":"A unique Minecraft MOBA experience!","color":"gray","bold":"false"}]
gamemode spectator @e[gamemode=!spectator,scores={1=..0,Timer=-197..}]
effect give @a[scores={1=..0,Timer=-2..-1}] blindness 3 255 true
execute as @a[scores={1=..0,Timer=-5}] at @s run playsound minecraft:entity.firework_rocket.launch record @p[distance=..1] ~ ~ ~
execute as @a[scores={1=..0,Timer=-40}] at @s run playsound minecraft:entity.firework_rocket.blast record @p[distance=..1] ~ ~ ~
execute as @a[scores={1=..0,Timer=-41}] at @s run playsound minecraft:entity.firework_rocket.twinkle record @p[distance=..1] ~ ~ ~
execute as @a[scores={1=..0,Timer=-41}] at @s run particle firework ~ ~1 ~ 0.2 0.5 0.2 0.2 100 force @p[distance=..1]
effect give @a[scores={1=..0}] invisibility 1 255 true
team join NoScoreDisp @a[scores={1=..0,Timer=-198..-1}]
scoreboard players reset * EmptyScore
scoreboard objectives setdisplay sidebar.team.green EmptyScore
advancement grant @a[scores={1=..0,Timer=-40}] only hierarchy:root
execute as @a[scores={1=..0,Timer=-40}] at @s run playsound minecraft:ui.toast.challenge_complete record @s
execute as @a[scores={1=..0,Timer=-100}] run tellraw @a ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> Hey ","color":"none"},{"selector":"@s","color":"none"},{"text":"! Welcome on Hierarchy!","color":"none"}]
execute as @a[scores={1=..0,Timer=-100}] as @a at @s run playsound minecraft:block.note_block.hat record @s
execute as @a[scores={1=..0,Timer=-122}] run tellraw @s ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> If it's your first time, you should read kits and map descriptions on ","color":"none"},{"text":"our website","color":"aqua","clickEvent":{"action":"open_url","value":"http://gunivers.net/hierarchy"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Open website (Only available in french)"}]}}}]
execute as @a[scores={1=..0,Timer=-122}] at @s run playsound minecraft:block.note_block.hat record @s
execute as @a[scores={1=..0,Timer=-138}] run tellraw @s ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> You can also join our community on ","color":"none"},{"text":"Discord","color":"aqua","clickEvent":{"action":"open_url","value":"https://discord.gg/E8qq6tN"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Join us on Discord!"}]}}}]
execute as @a[scores={1=..0,Timer=-138}] at @s run playsound minecraft:block.note_block.hat record @s
execute as @a[scores={1=..0,Timer=-160}] run tellraw @s ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> If you don't have the ressource pack, you can download it on ","color":"none"},{"text":"our website","color":"aqua","clickEvent":{"action":"open_url","value":"http://gunivers.net/hierarchy"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click here to open our website"}]}}}]
execute as @a[scores={1=..0,Timer=-160}] at @s run playsound minecraft:block.note_block.hat record @p
execute as @a[scores={1=..0,Timer=..-199}] run teleport @s 5000 100 5000 90 0
execute as @a[scores={1=..0,Timer=..-199}] run team join Random @s
scoreboard players set @a[scores={Timer=..-199}] 1 1
scoreboard players set @a[scores={Timer=..-199}] Timer 0
advancement revoke @a[scores={1=..0,Timer=0..}] everything
replaceitem entity @a[scores={1=..0}] enderchest.8 zombie_head{display:{Name:"Remove hat"}} 1

gamemode adventure @a[gamemode=!adventure,scores={1=..0,Timer=..-198}]
clear @a[scores={1=..0}]

execute as @a[scores={1=..0,Timer=-40}] at @s run function hierarchy:player/action/state/giveid
function hierarchy:global/import
