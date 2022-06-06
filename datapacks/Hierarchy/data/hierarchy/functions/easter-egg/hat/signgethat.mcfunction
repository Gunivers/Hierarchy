# Unicorn
execute as @s[scores={SelectedHat=-1},tag=unicorn] run tellraw @s {"text":"You already have this hat!","color":"red"}
execute as @s[scores={SelectedHat=-1},tag=!unicorn] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Unicorn ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={SelectedHat=-1},tag=unicorn] run playsound block.note.snare ambient @s
execute as @s[scores={SelectedHat=-1},tag=!unicorn] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={SelectedHat=-1}] run advancement grant @s only hat:unicorn
tag @s[scores={SelectedHat=-1}] add unicorn

# Leaves
execute as @s[scores={SelectedHat=-2},tag=leaves] run tellraw @s {"text":"You already have this hat!","color":"red"}
execute as @s[scores={SelectedHat=-2},tag=!leaves] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Leaves ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={SelectedHat=-2},tag=leaves] run playsound block.note.snare ambient @s
execute as @s[scores={SelectedHat=-2},tag=!leaves] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={SelectedHat=-2}] run advancement grant @s only hat:leaves
tag @s[scores={SelectedHat=-2}] add leaves

# Jukebox
execute as @s[scores={SelectedHat=-7},tag=jukebox] run tellraw @s {"text":"You already have this hat!","color":"red"}
execute as @s[scores={SelectedHat=-7},tag=!jukebox] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Jukebox ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={SelectedHat=-7},tag=jukebox] run playsound block.note.snare ambient @s
execute as @s[scores={SelectedHat=-7},tag=!jukebox] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={SelectedHat=-7}] run advancement grant @s only hat:jukebox
tag @s[scores={SelectedHat=-7}] add jukebox

# Trump
execute as @s[scores={SelectedHat=-10},tag=trump] run tellraw @s {"text":"You already have this hat!","color":"red"}
execute as @s[scores={SelectedHat=-10},tag=!trump] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Trump ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={SelectedHat=-10},tag=trump] run playsound block.note.snare ambient @s
execute as @s[scores={SelectedHat=-10},tag=!trump] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={SelectedHat=-10}] run advancement grant @s only hat:trump
tag @s[scores={SelectedHat=-10}] add trump

# Luna Lovegood
execute as @s[scores={SelectedHat=-11},tag=lunalovegood] run tellraw @s {"text":"You already have this hat!","color":"red"}
execute as @s[scores={SelectedHat=-11},tag=!lunalovegood] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Luna Lovegood ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={SelectedHat=-11},tag=lunalovegood] run playsound block.note.snare ambient @s
execute as @s[scores={SelectedHat=-11},tag=!lunalovegood] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={SelectedHat=-11}] run advancement grant @s only hat:lunalovegood
tag @s[scores={SelectedHat=-11}] add lunalovegood

# Bunny Girl
execute as @s[scores={SelectedHat=-12},tag=bunnygirl] run tellraw @s {"text":"You already have this hat!","color":"red"}
execute as @s[scores={SelectedHat=-12},tag=!bunnygirl] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Bunny Girl ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={SelectedHat=-12},tag=bunnygirl] run playsound block.note.snare ambient @s
execute as @s[scores={SelectedHat=-12},tag=!bunnygirl] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={SelectedHat=-12}] run advancement grant @s only hat:bunnygirl
tag @s[scores={SelectedHat=-12}] add bunnygirl

# Peruvian
execute as @s[scores={SelectedHat=-22},tag=peruvianhat] run tellraw @s {"text":"You already have this hat!","color":"red"}
execute as @s[scores={SelectedHat=-22},tag=!peruvianhat] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Peruvian ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={SelectedHat=-22},tag=peruvianhat] run playsound block.note.snare ambient @s
execute as @s[scores={SelectedHat=-22},tag=!peruvianhat] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={SelectedHat=-22}] run advancement grant @s only hat:peruvian
tag @s[scores={SelectedHat=-22}] add peruvianhat

# Jack Sparrow
execute as @s[scores={SelectedHat=-23},tag=jacksparrowhat] run tellraw @s {"text":"You already have this hat!","color":"red"}
execute as @s[scores={SelectedHat=-23},tag=!jacksparrowhat] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Jack Sparrow ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={SelectedHat=-23},tag=jacksparrowhat] run playsound block.note.snare ambient @s
execute as @s[scores={SelectedHat=-23},tag=!jacksparrowhat] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={SelectedHat=-23}] run advancement grant @s only hat:sparrow
tag @s[scores={SelectedHat=-23}] add jacksparrowhat

# Star Wars
execute as @s[scores={SelectedHat=-27},tag=stormtrooperhelmet] run tellraw @s {"text":"You already have this hat!","color":"red"}
execute as @s[scores={SelectedHat=-27},tag=!stormtrooperhelmet] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Star Wars ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={SelectedHat=-27},tag=stormtrooperhelmet] run playsound block.note.snare ambient @s
execute as @s[scores={SelectedHat=-27},tag=!stormtrooperhelmet] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={SelectedHat=-27}] run advancement grant @s only hat:stormtrooper
tag @s[scores={SelectedHat=-27}] add stormtrooperhelmet

# Astronaut
execute as @s[scores={SelectedHat=-31},tag=astronaut] run tellraw @s {"text":"You already have this hat!","color":"red"}
execute as @s[scores={SelectedHat=-31},tag=!astronaut] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Astronaut ","color":"green"},{"text":"helmet!","color":"dark_green","bold":"false"}]}
execute as @s[scores={SelectedHat=-31},tag=astronaut] run playsound block.note.snare ambient @s
execute as @s[scores={SelectedHat=-31},tag=!astronaut] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={SelectedHat=-31}] run advancement grant @s only hat:cosmonaut
tag @s[scores={SelectedHat=-31}] add astronaut

# Command Block Crazy
execute as @s[scores={SelectedHat=-36},tag=commandblockcrazy] run tellraw @s {"text":"You already have this hat!","color":"red"}
execute as @s[scores={SelectedHat=-36},tag=!commandblockcrazy] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Command Block Crazy ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={SelectedHat=-36},tag=commandblockcrazy] run playsound block.note.snare ambient @s
execute as @s[scores={SelectedHat=-36},tag=!commandblockcrazy] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={SelectedHat=-36}] run advancement grant @s only hat:commandblock
tag @s[scores={SelectedHat=-36}] add commandblockcrazy

scoreboard players set @s[scores={SelectedHat=..-1}] SelectedHat 0
