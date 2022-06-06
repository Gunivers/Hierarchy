scoreboard players add @e[type=armor_stand,tag=Blue] SelectedWTF 1
scoreboard players set @e[type=armor_stand,scores={SelectedWTF=9},tag=Blue] SelectedWTF 0

execute as @e[type=armor_stand,scores={SelectedWTF=1},tag=Blue] run clone 4 111 4 4 111 5 5002 200 5005
execute as @e[type=armor_stand,scores={SelectedWTF=2},tag=Blue] run clone 4 112 4 4 112 5 5002 200 5005
execute as @e[type=armor_stand,scores={SelectedWTF=3},tag=Blue] run clone 4 113 4 4 113 5 5002 200 5005
execute as @e[type=armor_stand,scores={SelectedWTF=4},tag=Blue] run clone 4 114 4 4 114 5 5002 200 5005
execute as @e[type=armor_stand,scores={SelectedWTF=5},tag=Blue] run clone 4 115 4 4 115 5 5002 200 5005
execute as @e[type=armor_stand,scores={SelectedWTF=6},tag=Blue] run clone 4 116 4 4 116 5 5002 200 5005
execute as @e[type=armor_stand,scores={SelectedWTF=7},tag=Blue] run clone 4 117 4 4 117 5 5002 200 5005
execute as @e[type=armor_stand,scores={SelectedWTF=8},tag=Blue] run clone 4 118 4 4 118 5 5002 200 5005
execute as @e[type=armor_stand,scores={SelectedWTF=0},tag=Blue] run clone 4 119 4 4 119 5 5002 200 5005

execute as @e[type=armor_stand,scores={SelectedWTF=1},tag=Blue] at @s run tellraw @a[x=5002.5,y=200,z=5005.5,distance=..5] {"text":"Selected WTF mode: ","extra":[{"text":"I Believe you can Fly","color":"gold","bold":"true"},{"text":"\nMap: Ruins\nMode: CTF\nClass: Mage Wind\nUnlimited Mana\nNo heal spells"}]}
execute as @e[type=armor_stand,scores={SelectedWTF=2},tag=Blue] at @s run tellraw @a[x=5002.5,y=200,z=5005.5,distance=..5] {"text":"Selected WTF mode: ","extra":[{"text":"Big Muscles but Little Heart","color":"gold","bold":"true"},{"text":"\nMode: Deathmatch\nClass: Warriors\nThe axe one shots if full charged"}]}
execute as @e[type=armor_stand,scores={SelectedWTF=3},tag=Blue] at @s run tellraw @a[x=5002.5,y=200,z=5005.5,distance=..5] {"text":"Selected WTF mode: ","extra":[{"text":"Who am I?","color":"gold","bold":"true"},{"text":"\nMap: Arena\nMode: Deathmatch\nEvery time someone dies, the classes are randomized"}]}
execute as @e[type=armor_stand,scores={SelectedWTF=4},tag=Blue] at @s run tellraw @a[x=5002.5,y=200,z=5005.5,distance=..5] {"text":"Selected WTF mode: ","extra":[{"text":"MICHAEL BAY MODAFOKA!!!!","color":"gold","bold":"true"},{"text":"\nMode: Deathmatch\nMage Burner only\nUnlimited Mana"}]}
execute as @e[type=armor_stand,scores={SelectedWTF=5},tag=Blue] at @s run tellraw @a[x=5002.5,y=200,z=5005.5,distance=..5] {"text":"Selected WTF mode: ","extra":[{"text":"More Love, Less War","color":"gold","bold":"true"},{"text":"\nMode: CTF\nClass: Assassins only\nAll damages dealt by spells become healings, you can only deal damages with your sword"}]}
execute as @e[type=armor_stand,scores={SelectedWTF=6},tag=Blue] at @s run tellraw @a[x=5002.5,y=200,z=5005.5,distance=..5] {"text":"Selected WTF mode: ","extra":[{"text":"One in the Chamber","color":"gold","bold":"true"},{"text":"\nMode: Deathmatch\nClass: Hunters Invokers only\nOverpowered arrows"}]}
execute as @e[type=armor_stand,scores={SelectedWTF=7},tag=Blue] at @s run tellraw @a[x=5002.5,y=200,z=5005.5,distance=..5] {"text":"Selected WTF mode: ","extra":[{"text":"Winter is Comming!","color":"gold","bold":"true"},{"text":"\nMode: CTF\nClass: Freezers for the Blue Team, Burners for the Orange Team"}]}
execute as @e[type=armor_stand,scores={SelectedWTF=8},tag=Blue] at @s run tellraw @a[x=5002.5,y=200,z=5005.5,distance=..5] {"text":"Selected WTF mode: ","extra":[{"text":"Where the Hell am I?!","color":"gold","bold":"true"},{"text":"\nEvery time someone dies, the teams are randomized and you are spread in the map (With 1/8 chances for the map to be changed)"}]}
execute as @e[type=armor_stand,scores={SelectedWTF=0},tag=Blue] at @s run tellraw @a[x=5002.5,y=200,z=5005.5,distance=..5] {"text":"Selected WTF mode: ","extra":[{"text":"Random","color":"gold","bold":"true"}]}

particle firework 5002 200 5005 0.1 0.1 0.1 0.1 8 force
playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
