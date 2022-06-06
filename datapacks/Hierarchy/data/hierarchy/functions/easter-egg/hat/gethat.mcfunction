execute as @s[scores={SelectedHat=1}] run tellraw @s[tag=!unicorn] {"text":"You didn't unlock that hat! \nFind the Tardis and fly to unicorn country! ","color":"red"}
execute at @s[scores={SelectedHat=1}] run playsound minecraft:block.anvil.place ambient @s[tag=!unicorn] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=1}] run scoreboard players set @s[tag=unicorn] Hat 1
execute as @s[scores={SelectedHat=1}] run playsound minecraft:block.cloth.place master @s[tag=unicorn]
execute as @s[scores={SelectedHat=1}] run tellraw @s[tag=unicorn] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=2}] run tellraw @s[tag=!leaves] {"text":"You didn't find that hat! \nBecome Tarzan and do some acrobranche!","color":"red"}
execute at @s[scores={SelectedHat=2}] run playsound minecraft:block.anvil.place ambient @s[tag=!leaves] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=2}] run scoreboard players set @s[tag=leaves] Hat 2
execute as @s[scores={SelectedHat=2}] run playsound minecraft:block.cloth.place master @s[tag=leaves]
execute as @s[scores={SelectedHat=2}] run tellraw @s[tag=leaves] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=3}] run tellraw @s[tag=!disco] {"text":"You didn't unlock that hat! \nBecome a hyperactive musician! ","color":"red"}
execute at @s[scores={SelectedHat=3}] run playsound minecraft:block.anvil.place ambient @s[tag=!disco] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=3}] run scoreboard players set @s[tag=disco] Hat 3
execute as @s[scores={SelectedHat=3}] run playsound minecraft:block.cloth.place master @s[tag=disco]
execute as @s[scores={SelectedHat=3}] run tellraw @s[tag=disco] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=4}] run tellraw @s[tag=!tnt] {"text":"You didn't find this hat! \nA fiery victory!","color":"red"}
execute at @s[scores={SelectedHat=4}] run playsound minecraft:block.anvil.place ambient @s[tag=!tnt] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=4}] run scoreboard players set @s[tag=tnt] Hat 4
execute as @s[scores={SelectedHat=4}] run playsound minecraft:block.cloth.place master @s[tag=tnt]
execute as @s[scores={SelectedHat=4}] run tellraw @s[tag=tnt] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=5}] run tellraw @s[tag=!bone] {"text":"You didn't find this hat! \nConsolation prize :/","color":"red"}
execute at @s[scores={SelectedHat=5}] run playsound minecraft:block.anvil.place ambient @s[tag=!bone] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=5}] run scoreboard players set @s[tag=bone] Hat 5
execute as @s[scores={SelectedHat=5}] run playsound minecraft:block.cloth.place master @s[tag=bone]
execute as @s[scores={SelectedHat=5}] run tellraw @s[tag=bone] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=6}] run tellraw @s[tag=!blingbling] {"text":"You didn't find this hat! \nNot rich enough!","color":"red"}
execute at @s[scores={SelectedHat=6}] run playsound minecraft:block.anvil.place ambient @s[tag=!blingbling] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=6}] run scoreboard players set @s[tag=blingbling] Hat 6
execute as @s[scores={SelectedHat=6}] run playsound minecraft:block.cloth.place master @s[tag=blingbling]
execute as @s[scores={SelectedHat=6}] run tellraw @s[tag=blingbling] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=7}] run tellraw @s[tag=!jukebox] {"text":"You didn't find this hat! \nLet's dance!!","color":"red"}
execute at @s[scores={SelectedHat=7}] run playsound minecraft:block.anvil.place ambient @s[tag=!jukebox] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=7}] run scoreboard players set @s[tag=jukebox] Hat 7
execute as @s[scores={SelectedHat=7}] run playsound minecraft:block.cloth.place master @s[tag=jukebox]
execute as @s[scores={SelectedHat=7}] run tellraw @s[tag=jukebox] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=8}] run tellraw @s[tag=!santaclaushat] {"text":"You didn't find this hat! \nWin a game with the deer hat.","color":"red"}
execute at @s[scores={SelectedHat=8}] run playsound minecraft:block.anvil.place ambient @s[tag=!santaclaushat] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=8}] run scoreboard players set @s[tag=santaclaushat] Hat 10
execute as @s[scores={SelectedHat=8}] run playsound minecraft:block.cloth.place master @s[tag=santaclaushat]
execute as @s[scores={SelectedHat=8}] run tellraw @s[tag=santaclaushat] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=9}] run tellraw @s[tag=!pikachu] {"text":"You didn't find this hat! \nWin a game with the Lightning.","color":"red"}
execute at @s[scores={SelectedHat=9}] run playsound minecraft:block.anvil.place ambient @s[tag=!pikachu] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=9}] run scoreboard players set @s[tag=pikachu] Hat 11
execute as @s[scores={SelectedHat=9}] run playsound minecraft:block.cloth.place master @s[tag=pikachu]
execute as @s[scores={SelectedHat=9}] run tellraw @s[tag=pikachu] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=10}] run tellraw @s[tag=!trump] {"text":"You didn't find this hat! \nGo to the top of the Wall!","color":"red"}
execute at @s[scores={SelectedHat=10}] run playsound minecraft:block.anvil.place ambient @s[tag=!trump] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=10}] run scoreboard players set @s[tag=trump] Hat 12
execute as @s[scores={SelectedHat=10}] run playsound minecraft:block.cloth.place master @s[tag=trump]
execute as @s[scores={SelectedHat=10}] run tellraw @s[tag=trump] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=11}] run tellraw @s[tag=!lunalovegood] {"text":"You didn't find this hat! \nOh, I found you, you were well hidden.","color":"red"}
execute at @s[scores={SelectedHat=11}] run playsound minecraft:block.anvil.place ambient @s[tag=!lunalovegood] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=11}] run scoreboard players set @s[tag=lunalovegood] Hat 13
execute as @s[scores={SelectedHat=11}] run playsound minecraft:block.cloth.place master @s[tag=lunalovegood]
execute as @s[scores={SelectedHat=11}] run tellraw @s[tag=lunalovegood] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=12}] run tellraw @s[tag=!bunnygirl] {"text":"You didn't find this hat! \nBoing, boing, boing...","color":"red"}
execute at @s[scores={SelectedHat=12}] run playsound minecraft:block.anvil.place ambient @s[tag=!bunnygirl] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=12}] run scoreboard players set @s[tag=bunnygirl] Hat 14
execute as @s[scores={SelectedHat=12}] run playsound minecraft:block.cloth.place master @s[tag=bunnygirl]
execute as @s[scores={SelectedHat=12}] run tellraw @s[tag=bunnygirl] {"text":"Hat equipped!","color":"dark_green"}

#Pink
execute as @s[scores={SelectedHat=13}] run scoreboard players set @s Hat 15
execute as @s[scores={SelectedHat=13}] run playsound minecraft:block.cloth.place master @s
execute as @s[scores={SelectedHat=13}] run tellraw @s {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=14}] run tellraw @s[tag=!lion] {"text":"You didn't find this hat! \nMake a kill streak with the Warrior class.","color":"red"}
execute at @s[scores={SelectedHat=14}] run playsound minecraft:block.anvil.place ambient @s[tag=!lion] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=14}] run scoreboard players set @s[tag=lion] Hat 16
execute as @s[scores={SelectedHat=14}] run playsound minecraft:block.cloth.place master @s[tag=lion]
execute as @s[scores={SelectedHat=14}] run tellraw @s[tag=lion] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=15}] run tellraw @s[tag=!sortinghat] {"text":"You didn't find this hat! \nMake a kill streak with the Mage class.","color":"red"}
execute at @s[scores={SelectedHat=15}] run playsound minecraft:block.anvil.place ambient @s[tag=!sortinghat] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=15}] run scoreboard players set @s[tag=sortinghat] Hat 17
execute as @s[scores={SelectedHat=15}] run playsound minecraft:block.cloth.place master @s[tag=sortinghat]
execute as @s[scores={SelectedHat=15}] run tellraw @s[tag=sortinghat] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=16}] run tellraw @s[tag=!goldenhood] {"text":"You didn't find this hat! \nMake a kill streak with the Assasin class.","color":"red"}
execute at @s[scores={SelectedHat=16}] run playsound minecraft:block.anvil.place ambient @s[tag=!goldenhood] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=16}] run scoreboard players set @s[tag=goldenhood] Hat 19
execute as @s[scores={SelectedHat=16}] run playsound minecraft:block.cloth.place master @s[tag=goldenhood]
execute as @s[scores={SelectedHat=16}] run tellraw @s[tag=goldenhood] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=17}] run tellraw @s[tag=!pumpkinhat] {"text":"You didn't find this hat! \nSo? Fear of the death?","color":"red"}
execute at @s[scores={SelectedHat=17}] run playsound minecraft:block.anvil.place ambient @s[tag=!pumpkinhat] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=17}] run scoreboard players set @s[tag=pumpkinhat] Hat 20
execute as @s[scores={SelectedHat=17}] run playsound minecraft:block.cloth.place master @s[tag=pumpkinhat]
execute as @s[scores={SelectedHat=17}] run tellraw @s[tag=pumpkinhat] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=18}] run tellraw @s[tag=!smhat] {"text":"You didn't find this hat! \nWin a game with the Freezer.","color":"red"}
execute at @s[scores={SelectedHat=18}] run playsound minecraft:block.anvil.place ambient @s[tag=!smhat] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=18}] run scoreboard players set @s[tag=smhat] Hat 21
execute as @s[scores={SelectedHat=18}] run playsound minecraft:block.cloth.place master @s[tag=smhat]
execute as @s[scores={SelectedHat=18}] run tellraw @s[tag=smhat] {"text":"Hat equipped!","color":"dark_green"}

#Hagrid beard
execute as @s[scores={SelectedHat=19}] run scoreboard players set @s Hat 22
execute as @s[scores={SelectedHat=19}] run playsound minecraft:block.cloth.place master @s
execute as @s[scores={SelectedHat=19}] run tellraw @s {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=20}] run tellraw @s[tag=!bigeyes] {"text":"You didn't find this hat! \nFind the other side.","color":"red"}
execute at @s[scores={SelectedHat=20}] run playsound minecraft:block.anvil.place ambient @s[tag=!bigeyes] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=20}] run scoreboard players set @s[tag=bigeyes] Hat 23
execute as @s[scores={SelectedHat=20}] run playsound minecraft:block.cloth.place master @s[tag=bigeyes]
execute as @s[scores={SelectedHat=20}] run tellraw @s[tag=bigeyes] {"text":"Hat equipped!","color":"dark_green"}

#Reindeer
execute as @s[scores={SelectedHat=21}] run scoreboard players set @s Hat 24
execute as @s[scores={SelectedHat=21}] run playsound minecraft:block.cloth.place master @s
execute as @s[scores={SelectedHat=21}] run tellraw @s {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=22}] run tellraw @s[tag=!peruvianhat] {"text":"You didn't find this hat! \nRaise your head and look for.","color":"red"}
execute at @s[scores={SelectedHat=22}] run playsound minecraft:block.anvil.place ambient @s[tag=!peruvianhat] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=22}] run scoreboard players set @s[tag=peruvianhat] Hat 25
execute as @s[scores={SelectedHat=22}] run playsound minecraft:block.cloth.place master @s[tag=peruvianhat]
execute as @s[scores={SelectedHat=22}] run tellraw @s[tag=peruvianhat] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=23}] run tellraw @s[tag=!jacksparrowhat] {"text":"You didn't find this hat! \nHey oh, bubble, there's a treasure by the waterfall!","color":"red"}
execute at @s[scores={SelectedHat=23}] run playsound minecraft:block.anvil.place ambient @s[tag=!jacksparrowhat] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=23}] run scoreboard players set @s[tag=jacksparrowhat] Hat 26
execute as @s[scores={SelectedHat=23}] run playsound minecraft:block.cloth.place master @s[tag=jacksparrowhat]
execute as @s[scores={SelectedHat=23}] run tellraw @s[tag=jacksparrowhat] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=24}] run tellraw @s[tag=!death] {"text":"You didn't find this hat! \nSERIAL KILLER!!","color":"red"}
execute at @s[scores={SelectedHat=24}] run playsound minecraft:block.anvil.place ambient @s[tag=!death] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=24}] run scoreboard players set @s[tag=death] Hat 28
execute as @s[scores={SelectedHat=24}] run playsound minecraft:block.cloth.place master @s[tag=death]
execute as @s[scores={SelectedHat=24}] run tellraw @s[tag=death] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=25}] run tellraw @s[tag=!crown] {"text":"You didn't find this hat! \nIf you have this hat it's because you played a lot and you're strong :)","color":"red"}
execute at @s[scores={SelectedHat=25}] run playsound minecraft:block.anvil.place ambient @s[tag=!crown] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=25}] run scoreboard players set @s[tag=crown] Hat 29
execute as @s[scores={SelectedHat=25}] run playsound minecraft:block.cloth.place master @s[tag=crown]
execute as @s[scores={SelectedHat=25}] run tellraw @s[tag=crown] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=26}] run tellraw @s[tag=!linkhat] {"text":"You didn't find this hat! \nMake a kill streak with the Hunter class.","color":"red"}
execute at @s[scores={SelectedHat=26}] run playsound minecraft:block.anvil.place ambient @s[tag=!linkhat] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=26}] run scoreboard players set @s[tag=linkhat] Hat 30
execute as @s[scores={SelectedHat=26}] run playsound minecraft:block.cloth.place master @s[tag=linkhat]
execute as @s[scores={SelectedHat=26}] run tellraw @s[tag=linkhat] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=27}] run tellraw @s[tag=!stormtrooperhelmet] {"text":"You didn't find this hat! \nA long time ago in a very distant galaxy.","color":"red"}
execute at @s[scores={SelectedHat=27}] run playsound minecraft:block.anvil.place ambient @s[tag=!stormtrooperhelmet] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=27}] run scoreboard players set @s[tag=stormtrooperhelmet] Hat 31
execute as @s[scores={SelectedHat=27}] run playsound minecraft:block.cloth.place master @s[tag=stormtrooperhelmet]
execute as @s[scores={SelectedHat=27}] run tellraw @s[tag=stormtrooperhelmet] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=28}] run tellraw @s[tag=!slimehat] {"text":"You didn't find this hat! \nWin a game with the Invoker.","color":"red"}
execute at @s[scores={SelectedHat=28}] run playsound minecraft:block.anvil.place ambient @s[tag=!slimehat] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=28}] run scoreboard players set @s[tag=slimehat] Hat 32
execute as @s[scores={SelectedHat=28}] run playsound minecraft:block.cloth.place master @s[tag=slimehat]
execute as @s[scores={SelectedHat=28}] run tellraw @s[tag=slimehat] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=29}] run tellraw @s[tag=!witchhat] {"text":"You didn't find this hat! \nWin a game with the Mage.","color":"red"}
execute at @s[scores={SelectedHat=29}] run playsound minecraft:block.anvil.place ambient @s[tag=!witchhat] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=29}] run scoreboard players set @s[tag=witchhat] Hat 33
execute as @s[scores={SelectedHat=29}] run playsound minecraft:block.cloth.place master @s[tag=witchhat]
execute as @s[scores={SelectedHat=29}] run tellraw @s[tag=witchhat] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=30}] run tellraw @s[tag=!slenderhead] {"text":"You didn't find this hat! \nEscape the SlenderMan even if you fall into a void.","color":"red"}
execute at @s[scores={SelectedHat=30}] run playsound minecraft:block.anvil.place ambient @s[tag=!slenderhead] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=30}] run scoreboard players set @s[tag=slenderhead] Hat 34
execute as @s[scores={SelectedHat=30}] run playsound minecraft:block.cloth.place master @s[tag=slenderhead]
execute as @s[scores={SelectedHat=30}] run tellraw @s[tag=slenderhead] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=31}] run tellraw @s[tag=!astronaut] {"text":"You didn't find this hat! \nToo simple to jump","color":"red"}
execute at @s[scores={SelectedHat=31}] run playsound minecraft:block.anvil.place ambient @s[tag=!astronaut] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=31}] run scoreboard players set @s[tag=astronaut] Hat 35
execute as @s[scores={SelectedHat=31}] run playsound minecraft:block.cloth.place master @s[tag=astronaut]
execute as @s[scores={SelectedHat=31}] run tellraw @s[tag=astronaut] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=32}] run tellraw @s[tag=!navi] {"text":"You didn't find this hat! \nHEY LISTEN! WATCH OUT! HEY! Win a game with the Wind Howler.","color":"red"}
execute at @s[scores={SelectedHat=32}] run playsound minecraft:block.anvil.place ambient @s[tag=!navi] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=32}] run scoreboard players set @s[tag=navi] Hat 37
execute as @s[scores={SelectedHat=32}] run playsound minecraft:block.cloth.place master @s[tag=navi]
execute as @s[scores={SelectedHat=32}] run tellraw @s[tag=navi] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=33}] run tellraw @s[tag=!devilhorn] {"text":"You didn't find this hat! \nYou're a tank, no?","color":"red"}
execute at @s[scores={SelectedHat=33}] run playsound minecraft:block.anvil.place ambient @s[tag=!devilhorn] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=33}] run scoreboard players set @s[tag=devilhorn] Hat 18
execute as @s[scores={SelectedHat=33}] run playsound minecraft:block.cloth.place master @s[tag=devilhorn]
execute as @s[scores={SelectedHat=33}] run tellraw @s[tag=devilhorn] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=34}] run tellraw @s[tag=!fez] {"text":"You didn't find this hat! \nWin a game with the Time Master.","color":"red"}
execute at @s[scores={SelectedHat=34}] run playsound minecraft:block.anvil.place ambient @s[tag=!fez] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=34}] run scoreboard players set @s[tag=fez] Hat 27
execute as @s[scores={SelectedHat=34}] run playsound minecraft:block.cloth.place master @s[tag=fez]
execute as @s[scores={SelectedHat=34}] run tellraw @s[tag=fez] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=35}] run tellraw @s[tag=!axeinhead] {"text":"You didn't find this hat! \nI think you figured out how to get that axe in your head.","color":"red"}
execute at @s[scores={SelectedHat=35}] run playsound minecraft:block.anvil.place ambient @s[tag=!axeinhead] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=35}] run scoreboard players set @s[tag=axeinhead] Hat 36
execute as @s[scores={SelectedHat=35}] run playsound minecraft:block.cloth.place master @s[tag=axeinhead]
execute as @s[scores={SelectedHat=35}] run tellraw @s[tag=axeinhead] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=36}] run tellraw @s[tag=!commandblockcrazy] {"text":"You didn't find this hat! \nOn the other side of the matrix...","color":"red"}
execute at @s[scores={SelectedHat=36}] run playsound minecraft:block.anvil.place ambient @s[tag=!commandblockcrazy] ~ ~ ~ 2 1
execute as @s[scores={SelectedHat=36}] run scoreboard players set @s[tag=commandblockcrazy] Hat 9
execute as @s[scores={SelectedHat=36}] run playsound minecraft:block.cloth.place master @s[tag=commandblockcrazy]
execute as @s[scores={SelectedHat=36}] run tellraw @s[tag=commandblockcrazy] {"text":"Hat equipped!","color":"dark_green"}

execute as @s[scores={SelectedHat=100..}] run scoreboard players set @s Hat 0
replaceitem entity @s[scores={SelectedHat=100..}] armor.head air
execute as @s[scores={SelectedHat=100..}] run tellraw @s {"text":"You removed your hat!","color":"dark_green"}

execute as @s[scores={SelectedHat=1..}] run scoreboard players set @s SelectedHat 0
