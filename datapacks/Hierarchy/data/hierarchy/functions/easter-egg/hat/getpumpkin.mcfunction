#Pumpkin
execute as @s[tag=!pumpkinhat] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Pumpkin ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[tag=!pumpkinhat] run playsound entity.experience_orb.pickup ambient @s
execute at @s[tag=!pumpkinhat] run advancement grant @s only hat:pumpkinhat
tag @s[tag=!pumpkinhat] add pumpkinhat
