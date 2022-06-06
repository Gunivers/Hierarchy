#Join Orange
team join Orange @a[scores={Action=5}]
tellraw @a[scores={Action=5}] ["",{"text":"> You are now in Orange <","color":"gold"}]
execute as @a[scores={Action=5}] at @s run playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1

#Join Blue
team join Blue @a[scores={Action=10}]
tellraw @a[scores={Action=10}] ["",{"text":"> You are now in Blue <","color":"blue"}]
execute as @a[scores={Action=10}] at @s run playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1

#Join Random
team join Random @a[scores={Action=15}]
tellraw @a[scores={Action=15}] ["",{"text":"> You are now in Random Team <","color":"dark_gray"}]
execute as @a[scores={Action=15}] at @s run playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1

#Join Spec
execute as @r[scores={Action=25}] at @s run team join Spec @p[distance=..1]
tellraw @a[scores={Action=25}] ["",{"text":"> You are now in Spectator <","color":"dark_green"}]
execute as @a[scores={Action=25}] at @s run playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1


execute as @r[scores={Action=30}] at @s as @p[distance=..1] at @s run teleport 2000 102 2000
execute as @a[scores={Action=30}] at @s run playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1


execute as @r[scores={Action=35}] at @s run scoreboard players set @p[distance=..1] InGame -4
execute as @a[scores={Action=35}] at @s run playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1


execute as @r[scores={Action=40}] at @s as @p[distance=..1] at @s run teleport 5000 105 5000
execute as @a[scores={Action=40}] at @s run playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1

#Reset player
execute as @a[scores={Action=55}] at @s run playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
scoreboard players reset @a[scores={Action=55}]

# Info
tellraw @a[scores={Action=60}] ["",{"text":"\n\n\n\n\nMore info and description of kits: >> Cick here <<\n\n\n\n------------------------------------------","clickEvent":{"action":"open_url","value":"https://gunivers.net/hierarchy"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to open URL"}]}},"color":"white","bold":"false","strikethrough":"false"},{"text":"\nHierarchy by Gunivers \n","color":"gold","bold":"true","strikethrough":"false"},{"text":"This map was inspired by the MOBA games. Several kits are available, each kits has its own skills. Press 't' and click on the link above this message to see their description. You can play on 4 maps and 4 game modes. In each mode, the team that lost all its tickets loses.\nIf you encounter any bug, please report it on our Discord.","color":"gray","bold":"false","underlined":"false"},{"text":"\nTwitter: ","color":"aqua","bold":"false"},{"text":"@GuniversTeam","color":"white","clickEvent":{"action":"open_url","value":"https://twitter.com/GuniversTeam"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to open URL"}]}}},{"text":"         Facebook: ","color":"blue"},{"text":"Gunivers","clickEvent":{"action":"open_url","value":"https://www.facebook.com/pages/Gunivers/747333335333568?ref=hl"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to open URL"}]}},"color":"none"},{"text":"\nYoutube: ","color":"red"},{"text":"Gunivers Team","color":"none","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCtQb5O95cCGp9iquLjY9O1g"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to open URL"}]}}},{"text":"        WebSite: ","color":"dark_blue"},{"text":"Gunivers.net","clickEvent":{"action":"open_url","value":"http://gunivers.net"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to open URL"}]}},"color":"none"},{"text":"\nDiscord: ","color":"blue"},{"text":"Gunivers","clickEvent":{"action":"open_url","value":"https://discord.gg/0hXUtgUquSJE78RC"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to open URL"}]}},"color":"none"}]
execute as @a[scores={Action=60}] at @s run playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1


execute as @r[scores={Action=65}] run scoreboard players reset *
execute as @r[scores={Action=65}] run kill @e[type=!player]
execute as @r[scores={Action=65}] run tellraw @a ["",{"text":"\n\n\n\n\n<","color":"white","bold":false},{"text":"Gunivers","color":"gold","bold":false},{"text":">","color":"white","bold":false},{"text":" This map has been successfully reseted!\n\n\n\n","color":"white","bold":false}]


execute as @a[scores={Action=20}] run setblock -14 65 -26 redstone_block
execute as @a[scores={Action=20}] at @s run playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
tellraw @a[gamemode=adventure,scores={Action=1000}] {"text":"You must be in creative mode to modify the settings","color":"red"}

execute as @a[scores={Action=100}] run team join Spawn @s


scoreboard players set @a Action 0