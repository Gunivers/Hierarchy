tellraw @a[tag=Debug] ["",{"text":". . . Global/Menu/Lobby | As: "},{"selector":"@s"}]

#Items
replaceitem entity @a[gamemode=adventure,scores={Drop=..0,InGame=0,Hat=0},tag=Menu] armor.head air 
execute as @e[type=armor_stand,name=Blue,tag=Setting_Kit_Selection] run replaceitem entity @a[gamemode=adventure,scores={Drop=..0,InGame=0},tag=Menu] hotbar.0 netherite_helmet{display:{Name:"{\"text\":\"Hero selection (Drop to select)\",\"color\":\"aqua\"}"},unbreakable:1} 1
execute as @e[type=armor_stand,name=Blue,tag=!Setting_Kit_Selection] run replaceitem entity @a[gamemode=adventure,scores={Drop=..0,InGame=0},tag=Menu] hotbar.0 barrier{display:{Name:"{\"text\":\"Hero selection was disabled\",\"color\":\"red\"}"},unbreakable:1} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=0},tag=Menu] hotbar.1 air
replaceitem entity @a[gamemode=adventure,scores={InGame=0},tag=Menu] hotbar.2 air
replaceitem entity @a[gamemode=adventure,scores={InGame=0},tag=Menu] hotbar.3 air


#Give concretes
execute as @a[tag=!Ready] run replaceitem entity @s[gamemode=adventure,team=!Spec,scores={1=1..,Drop=..0,InGame=-1..},tag=InLobby] hotbar.4 red_concrete{display:{Name:"{\"text\":\"Not ready (Drop to be ready)\",\"color\":\"red\"}"}} 1
execute as @a[tag=Ready] run replaceitem entity @s[gamemode=adventure,team=!Spec,scores={1=1..,Drop=..0,InGame=-1..},tag=InLobby] hotbar.4 lime_concrete{display:{Name:"{\"text\":\"Ready (Drop to be not ready)\",\"color\":\"green\"}"}} 1
replaceitem entity @s[gamemode=adventure,team=Spec,scores={Drop=..0,InGame=-1..}] hotbar.4 light_gray_concrete{display:{Name:"{\"text\":\"You will spectate\",\"color\":\"gray\"}"}} 1


tag @a[team=Spec] remove Ready
tag @a remove BufferReady
tag @a[tag=Ready] add BufferReady


execute as @a[tag=!Ready] run tag @s[team=!Spec,scores={Drop=2,InGame=0..},nbt={SelectedItemSlot:4}] add Ready
execute as @a[tag=BufferReady] run tag @s[scores={Drop=2,InGame=0..},nbt={SelectedItemSlot:4}] remove Ready

execute as @e[type=armor_stand,name=Blue,tag=Setting_Force_Ready,limit=1,sort=nearest] at @s run tag @a[gamemode=!creative,team=!Spec,scores={InGame=-1..}] add Ready

execute as @a[team=!Random,tag=Ready,scores={1=1}] as @s[team=!Blue] run team join Random @s[team=!Orange]
execute as @a[tag=InLobby] run effect give @s[tag=Ready] glowing 1 1 true
execute as @a[tag=InLobby] run effect clear @s[tag=!Ready] glowing
replaceitem entity @a[gamemode=adventure,scores={Drop=..0,InGame=0},tag=Menu] hotbar.5 air
replaceitem entity @a[gamemode=adventure,scores={InGame=0},tag=Menu] hotbar.6 air
replaceitem entity @a[gamemode=adventure,scores={InGame=0},tag=Menu] hotbar.7 air
replaceitem entity @a[gamemode=adventure,scores={InGame=0},tag=Menu] hotbar.8 paper{display:{Name:"{\"text\":\"Scores (Drop to display)\",\"color\":\"yellow\"}"},unbreakable:1} 1

replaceitem entity @a[gamemode=adventure,scores={InGame=0},tag=Menu] weapon.offhand air
replaceitem entity @a[gamemode=adventure,scores={InGame=0},tag=Menu] armor.chest air
replaceitem entity @a[gamemode=adventure,scores={InGame=0},tag=Menu] armor.feet air
replaceitem entity @a[gamemode=adventure,scores={InGame=0},tag=Menu] armor.legs air

#Actions
scoreboard players set @a[scores={Drop=2,InGame=0},tag=Menu,nbt={SelectedItemSlot:0}] InGame -6

tag @a[scores={Drop=2,InGame=0},tag=Menu,nbt={SelectedItemSlot:8}] add DispScores
execute as @a[tag=DispScores] at @s run function hierarchy:global/menu/score

#Init
clear @a[scores={InGame=-1}]
scoreboard players add @a[scores={InGame=-1}] InGame 1
