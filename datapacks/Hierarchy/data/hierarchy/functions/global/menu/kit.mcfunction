tellraw @a[tag=Debug] ["",{"text":". . . Global/Menu/Kit | As: "},{"selector":"@s"}]

#Items
replaceitem entity @a[gamemode=adventure,scores={InGame=-2}] hotbar.0 barrier{Unbreakable:1,display:{Name:"{\"text\":\"Back to previous menu (Drop to select)\",\"color\":\"red\"}"}} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-2}] hotbar.1 air 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-2}] hotbar.2 clock{Unbreakable:1,display:{Name:"{\"text\":\"Time Master (Drop to select)\",\"color\":\"aqua\"}",Lore:["See all kits description on our website: Gunivers.nethierarchy!"]},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-2}] hotbar.3 blaze_powder{Unbreakable:1,display:{Name:"{\"text\":\"Burner (Drop to select)\",\"color\":\"aqua\"}",Lore:["See all kits description on our website: Gunivers.nethierarchy!"]},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-2}] hotbar.4 redstone{Unbreakable:1,display:{Name:"{\"text\":\"Thunder (Drop to select)\",\"color\":\"aqua\"}",Lore:["See all kits description on our website: Gunivers.nethierarchy!"]},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-2}] hotbar.5 diamond{Unbreakable:1,display:{Name:"{\"text\":\"Freezer (Drop to select)\",\"color\":\"aqua\"}",Lore:["See all kits description on our website: Gunivers.nethierarchy!"]},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-2}] hotbar.6 feather{Unbreakable:1,display:{Name:"{\"text\":\"Wind Howler (Drop to select)\",\"color\":\"aqua\"}",Lore:["See all kits description on our website: Gunivers.nethierarchy!"]},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-2}] hotbar.7 bone{Unbreakable:1,display:{Name:"{\"text\":\"Invoker (Drop to select)\",\"color\":\"aqua\"}",Lore:["See all kits description on our website: Gunivers.nethierarchy!"]},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-2}] hotbar.8 air 1
replaceitem entity @a[gamemode=adventure,scores={InGame=-2}] weapon.offhand air 1

#Action
scoreboard players set @a[scores={Drop=2,InGame=-2},nbt={SelectedItemSlot:0}] InGame -4

scoreboard players add @a[scores={Drop=2,InGame=-2},nbt={SelectedItemSlot:2}] Class 1
scoreboard players add @a[scores={Drop=2,InGame=-2},nbt={SelectedItemSlot:3}] Class 2
scoreboard players add @a[scores={Drop=2,InGame=-2},nbt={SelectedItemSlot:4}] Class 3
scoreboard players add @a[scores={Drop=2,InGame=-2},nbt={SelectedItemSlot:5}] Class 4
scoreboard players add @a[scores={Drop=2,InGame=-2},nbt={SelectedItemSlot:6}] Class 5
scoreboard players add @a[scores={Drop=2,InGame=-2},nbt={SelectedItemSlot:7}] Class 6

scoreboard players set @a[scores={Drop=2,InGame=-2}] InGame -1

#Init
clear @a[scores={InGame=-3}]
scoreboard players add @a[scores={InGame=-3}] InGame 1
