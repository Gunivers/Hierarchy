tellraw @a[tag=Debug] ["",{"text":". . . Global/Menu/Class | As: "},{"selector":"@s"}]

#Items
replaceitem entity @a[gamemode=adventure,scores={InGame=-4}] hotbar.0 barrier{Unbreakable:1,display:{Name:"{\"text\":\"Reset kit and back to previous menu (Drop to select)\",\"color\":\"red\"}"}} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-4}] hotbar.1 air 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-4}] hotbar.3 stick{Unbreakable:1,display:{Name:"{\"text\":\"Mage (Drop to select)\",\"color\":\"aqua\"}",Lore:["See all kits description on our website: Gunivers.nethierarchy!"]},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-4}] hotbar.4 iron_sword{Unbreakable:1,display:{Name:"{\"text\":\"Assassin (Drop to select)\",\"color\":\"aqua\"}",Lore:["See all kits description on our website: Gunivers.nethierarchy!"]},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-4}] hotbar.5 bow{Unbreakable:1,display:{Name:"{\"text\":\"Hunter (Drop to select)\",\"color\":\"aqua\"}",Lore:["See all kits description on our website: Gunivers.nethierarchy!"]},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-4}] hotbar.6 shield{Unbreakable:1,display:{Name:"{\"text\":\"Guardian (Drop to select)\",\"color\":\"aqua\"}",Lore:["See all kits description on our website: Gunivers.nethierarchy!"]},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-4}] hotbar.2 air 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-4}] hotbar.7 air 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-4}] hotbar.8 name_tag{Unbreakable:1,display:{Name:"{\"text\":\"Random Kit (Drop to select)\",\"color\":\"yellow\"}",Lore:["See all kits description on our website: Gunivers.nethierarchy!"]},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-4}] weapon.offhand air 1

#Actions
scoreboard players set @a[scores={Drop=2,InGame=-4},nbt={SelectedItemSlot:0}] Class 0
scoreboard players set @a[scores={Drop=2,InGame=-4},nbt={SelectedItemSlot:0}] InGame -1

scoreboard players set @a[scores={Drop=2,InGame=-4},nbt={SelectedItemSlot:3}] Class 0
scoreboard players set @a[scores={Drop=2,InGame=-4},nbt={SelectedItemSlot:4}] Class 10
scoreboard players set @a[scores={Drop=2,InGame=-4},nbt={SelectedItemSlot:5}] Class 20
scoreboard players set @a[scores={Drop=2,InGame=-4},nbt={SelectedItemSlot:6}] Class 30

tag @a[scores={Drop=2,InGame=-4},nbt={SelectedItemSlot:8}] add RandomKit
execute if entity @a[tag=RandomKit] run function hierarchy:game/kit/random
scoreboard players set @a[scores={Drop=2,InGame=-4},nbt={SelectedItemSlot:8}] InGame -1

scoreboard players set @a[scores={Drop=2,InGame=-4}] InGame -3

#Init
clear @a[scores={InGame=-5}]
scoreboard players add @a[scores={InGame=-6..-5}] InGame 1
