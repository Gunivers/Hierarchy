#Disco
tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Disco ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
playsound entity.experience_orb.pickup ambient @s
advancement grant @s only hat:disco
tag @s add disco
