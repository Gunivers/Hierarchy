tellraw @a[tag=Debug] ["",{"text":". . Global/Menu/Main | As: "},{"selector":"@s"}]

#Menu zones
tag @a remove Menu
tag @a[scores={1=1..},tag=InLobby] add Menu
tag @a[x=5000.5,y=80,z=5000.5,distance=..19] remove Menu

#Menus
execute as @r[scores={InGame=-6..-4},tag=Menu] at @s run function hierarchy:global/menu/class
execute as @r[scores={InGame=-3..-2},tag=Menu] at @s run function hierarchy:global/menu/kit
execute as @r[scores={InGame=-1..},tag=InLobby] at @s run function hierarchy:global/menu/lobby

scoreboard players enable @a Action
execute if entity @r[scores={Action=1..}] run function hierarchy:global/menu/action
execute if entity @r[scores={Action=..-1}] run function hierarchy:global/menu/hoc-messages

#NoMenu
clear @a[gamemode=!creative,scores={InGame=..0},tag=!Menu] netherite_helmet
clear @a[gamemode=!creative,scores={InGame=..0},tag=!Menu] paper
clear @a[gamemode=!creative,scores={InGame=..0},tag=!Menu] green_concrete
clear @a[gamemode=!creative,scores={InGame=..0},tag=!Menu] red_concrete
clear @a[gamemode=!creative,scores={InGame=..0},tag=!Menu] light_gray_concrete

clear @a[scores={InGame=..-1},tag=!Menu]
scoreboard players set @a[scores={InGame=..-1},tag=!Menu] InGame 0
