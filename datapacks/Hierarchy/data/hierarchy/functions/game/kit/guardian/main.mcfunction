#Primary
execute as @e[type=armor_stand,name=Blue,tag=Game_WTF_2,limit=1,sort=nearest] at @s run replaceitem entity @a[scores={EffSilencePrim=..0,UpgradedWeapon=..0},tag=Guardian] hotbar.0 golden_axe{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:127s}],display:{Name:"{\"text\":\"Basic Attack  0✸  2s\",\"color\":\"aqua\"}"},HideFlags:63} 1
execute as @e[type=armor_stand,name=Blue,tag=!Game_WTF_2,limit=1,sort=nearest] at @s run replaceitem entity @a[scores={EffSilencePrim=..0,UpgradedWeapon=..0},tag=Guardian] hotbar.0 golden_axe{Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:0s}],display:{Name:"{\"text\":\"Basic Attack  0✸  2s\",\"color\":\"aqua\"}"},HideFlags:63} 1

scoreboard players set @a[scores={HaveShield=1..}] HaveShield 0
scoreboard players set @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield"}]}] HaveShield 1
scoreboard players add @a HaveShield 0
replaceitem entity @a[tag=!Guardian] weapon.offhand air
replaceitem entity @a[scores={InGame=..0}] weapon.offhand air
tag @a remove Slot
tag @a[tag=Guardian,nbt={SelectedItemSlot:0}] add Slot
replaceitem entity @a[scores={EffSilencePrim=..0,HaveShield=..0},tag=Slot] weapon.offhand shield{Unbreakable:1,display:{Name:"{\"text\":\"Guardian's shield\",\"color\":\"aqua\"}"},HideFlags:63} 1
clear @a[scores={InGame=0..},tag=!Slot] shield

# Passive
effect give @a[scores={health=..20},tag=Guardian] resistance 1 1 true
effect give @a[scores={health=20..40},tag=Guardian] resistance 1 0 true

# Hero
execute if entity @a[scores={Class=31},tag=IsPlaying] run function hierarchy:game/kit/guardian/time/main
execute if entity @a[scores={Class=32},tag=IsPlaying] run function hierarchy:game/kit/guardian/burner/main
execute if entity @a[scores={Class=33},tag=IsPlaying] run function hierarchy:game/kit/guardian/thunder/main
execute if entity @a[scores={Class=34},tag=IsPlaying] run function hierarchy:game/kit/guardian/freezer/main
execute if entity @a[scores={Class=35},tag=IsPlaying] run function hierarchy:game/kit/guardian/wind/main
execute if entity @a[scores={Class=36},tag=IsPlaying] run function hierarchy:game/kit/guardian/invoker/main
