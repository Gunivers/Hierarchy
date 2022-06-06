#Axe in head
execute as @s[tag=!axeinhead] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Axe In Head ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[tag=!axeinhead] run playsound entity.experience_orb.pickup ambient @s
execute at @s[tag=!axeinhead] run advancement grant @s only hat:axeinhead
tag @s[tag=!axeinhead] add axeinhead
