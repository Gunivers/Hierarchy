#Big eyes hat
execute as @a[x=5095.5,y=109,z=4993.5,dx=3,dy=3,dz=4,tag=!bigeyes] at @s run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Big Eyes ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @a[x=5095.5,y=109,z=4993.5,dx=3,dy=3,dz=4,tag=!bigeyes] at @s run playsound entity.experience_orb.pickup ambient @s
execute as @a[x=5095.5,y=109,z=4993.5,dx=3,dy=3,dz=4,tag=!bigeyes] at @s run advancement grant @s only hat:bigeye
execute as @a[x=5095.5,y=109,z=4993.5,dx=3,dy=3,dz=4,tag=!bigeyes] at @s run tag @s add bigeyes

#Slender Hat
execute as @a[x=4971.5,y=142,z=5000.5,tag=!slenderhead,distance=..5] at @s run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Slender ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @a[x=4971.5,y=142,z=5000.5,tag=!slenderhead,distance=..5] at @s run playsound entity.experience_orb.pickup ambient @s
execute as @a[x=4971.5,y=142,z=5000.5,tag=!slenderhead,distance=..5] at @s run advancement grant @s only hat:slender
tag @a[x=4971.5,y=142,z=5000.5,tag=!slenderhead,distance=..5] add slenderhead
