#Fez
scoreboard players set @a[team=Blue,scores={Class=1},tag=InGame] SelectedHat -34
scoreboard players set @a[team=Blue,scores={Class=11},tag=InGame] SelectedHat -34
scoreboard players set @a[team=Blue,scores={Class=21},tag=InGame] SelectedHat -34
scoreboard players set @a[team=Blue,scores={Class=31},tag=InGame] SelectedHat -34
execute as @a[scores={SelectedHat=-34},tag=!fez] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Fez","color":"green"},{"text":"!","color":"dark_green","bold":"false"}]}
execute as @a[scores={SelectedHat=-34},tag=!fez] run playsound entity.experience_orb.pickup ambient @s
execute as @a[scores={SelectedHat=-34},tag=!fez] at @s run advancement grant @s only hat:fez
execute as @a[scores={SelectedHat=-34},tag=!fez] run tag @s add fez

#Slime
scoreboard players set @a[team=Blue,scores={Class=6},tag=InGame] SelectedHat -32
scoreboard players set @a[team=Blue,scores={Class=16},tag=InGame] SelectedHat -32
scoreboard players set @a[team=Blue,scores={Class=26},tag=InGame] SelectedHat -32
scoreboard players set @a[team=Blue,scores={Class=36},tag=InGame] SelectedHat -32
execute as @a[scores={SelectedHat=-32},tag=!slime] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Slime ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @a[scores={SelectedHat=-32},tag=!slime] run playsound entity.experience_orb.pickup ambient @s
execute as @a[scores={SelectedHat=-32},tag=!slime] at @s run advancement grant @s only hat:slime
execute as @a[scores={SelectedHat=-32},tag=!slime] run tag @s add slime

#Witch
scoreboard players set @a[team=Blue,scores={Class=0..9},tag=InGame] SelectedHat -33
execute as @a[scores={SelectedHat=-33},tag=!witch] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Witch ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @a[scores={SelectedHat=-33},tag=!witch] run playsound entity.experience_orb.pickup ambient @s
execute as @a[scores={SelectedHat=-33},tag=!witch] at @s run advancement grant @s only hat:witch
execute as @a[scores={SelectedHat=-33},tag=!witch] run tag @s add witch

#Navi
scoreboard players set @a[team=Blue,scores={Class=5},tag=InGame] SelectedHat -37
scoreboard players set @a[team=Blue,scores={Class=15},tag=InGame] SelectedHat -37
scoreboard players set @a[team=Blue,scores={Class=25},tag=InGame] SelectedHat -37
scoreboard players set @a[team=Blue,scores={Class=35},tag=InGame] SelectedHat -37
execute as @a[scores={SelectedHat=-37},tag=!navi] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found","color":"dark_green","bold":"false"},{"text":" Navi ","color":"green"},{"text":"!","color":"dark_green","bold":"false"}]}
execute as @a[scores={SelectedHat=-37},tag=!navi] run playsound entity.experience_orb.pickup ambient @s
execute as @a[scores={SelectedHat=-37},tag=!navi] at @s run advancement grant @s only hat:navi
execute as @a[scores={SelectedHat=-37},tag=!navi] run tag @s add navi

#SM Hat
scoreboard players set @a[team=Blue,scores={Class=4},tag=InGame] SelectedHat -21
scoreboard players set @a[team=Blue,scores={Class=14},tag=InGame] SelectedHat -21
scoreboard players set @a[team=Blue,scores={Class=24},tag=InGame] SelectedHat -21
scoreboard players set @a[team=Blue,scores={Class=34},tag=InGame] SelectedHat -21
execute as @a[scores={SelectedHat=-21},tag=!smhat] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Snowman ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @a[scores={SelectedHat=-21},tag=!smhat] run playsound entity.experience_orb.pickup ambient @s
execute as @a[scores={SelectedHat=-21},tag=!smhat] at @s run advancement grant @s only hat:smhat
execute as @a[scores={SelectedHat=-21},tag=!smhat] run tag @s add smhat

#Pikachu
scoreboard players set @a[team=Blue,scores={Class=3},tag=InGame] SelectedHat -9
scoreboard players set @a[team=Blue,scores={Class=13},tag=InGame] SelectedHat -9
scoreboard players set @a[team=Blue,scores={Class=23},tag=InGame] SelectedHat -9
scoreboard players set @a[team=Blue,scores={Class=33},tag=InGame] SelectedHat -9
execute as @a[scores={SelectedHat=-9},tag=!pikachu] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Pikachu ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @a[scores={SelectedHat=-9},tag=!pikachu] run playsound entity.experience_orb.pickup ambient @s
execute as @a[scores={SelectedHat=-9},tag=!pikachu] at @s run advancement grant @s only hat:pikachu
execute as @a[scores={SelectedHat=-9},tag=!pikachu] run tag @s add pikachu

#Santa Claus
scoreboard players set @a[team=Blue,scores={Hat=24},tag=InGame] SelectedHat -8
execute as @a[scores={SelectedHat=-8},tag=!santaclaushat] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Santa Claus ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @a[scores={SelectedHat=-8},tag=!santaclaushat] run playsound entity.experience_orb.pickup ambient @s
execute as @a[scores={SelectedHat=-8},tag=!santaclaushat] at @s run advancement grant @s only hat:santaclaus
execute as @a[scores={SelectedHat=-8},tag=!santaclaushat] run tag @s add santaclaushat

#TnT
scoreboard players set @a[team=Blue,scores={Class=2},tag=InGame] SelectedHat -4
scoreboard players set @a[team=Blue,scores={Class=12},tag=InGame] SelectedHat -4
scoreboard players set @a[team=Blue,scores={Class=22},tag=InGame] SelectedHat -4
scoreboard players set @a[team=Blue,scores={Class=32},tag=InGame] SelectedHat -4
execute as @a[scores={SelectedHat=-4},tag=!tnt] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" TNT ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @a[scores={SelectedHat=-4},tag=!tnt] run playsound entity.experience_orb.pickup ambient @s
execute as @a[scores={SelectedHat=-4},tag=!tnt] at @s run advancement grant @s only hat:tnt
execute as @a[scores={SelectedHat=-4},tag=!tnt] run tag @s add tnt

#Crown
scoreboard players set @a[scores={WinNumber=5..}] SelectedHat -25
execute as @a[scores={SelectedHat=-25},tag=!crown] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Crown ","color":"green"},{"text":"!","color":"dark_green","bold":"false"}]}
execute as @a[scores={SelectedHat=-25},tag=!crown] run playsound entity.experience_orb.pickup ambient @s
execute as @a[scores={SelectedHat=-25},tag=!crown] at @s run advancement grant @s only hat:crown
execute as @a[scores={SelectedHat=-25},tag=!crown] run tag @s add crown

#Bone
scoreboard players set @a[scores={LoseNumber=5..}] SelectedHat -5
execute as @a[scores={SelectedHat=-5},tag=!bone] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Bone ","color":"green"},{"text":"!","color":"dark_green","bold":"false"}]}
execute as @a[scores={SelectedHat=-5},tag=!bone] run playsound entity.experience_orb.pickup ambient @s
execute as @a[scores={SelectedHat=-5},tag=!bone] at @s run advancement grant @s only hat:bone
execute as @a[scores={SelectedHat=-5},tag=!bone] run tag @s add bone

#Advancement victory
advancement grant @a[tag=InGame] only hierarchy:first
advancement grant @a[team=Blue,tag=InGame] only hierarchy:victory
advancement grant @a[team=Blue,scores={WinNumber=5..},tag=InGame] only hierarchy:5
advancement grant @a[team=Blue,scores={WinNumber=10..},tag=InGame] only hierarchy:10
advancement grant @a[team=Blue,scores={WinNumber=15..},tag=InGame] only hierarchy:15
advancement grant @a[team=Blue,scores={WinNumber=30..},tag=InGame] only hierarchy:30
advancement grant @a[team=Blue,scores={WinNumber=64..},tag=InGame] only hierarchy:64
