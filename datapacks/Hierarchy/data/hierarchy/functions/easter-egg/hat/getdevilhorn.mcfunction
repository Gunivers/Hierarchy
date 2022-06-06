#Devil horn
execute as @s[tag=!devilhorn] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Devil Horn ","color":"green"},{"text":"!","color":"dark_green","bold":"false"}]}
execute as @s[tag=!devilhorn] run playsound entity.experience_orb.pickup ambient @s
execute at @s[tag=!devilhorn] run advancement grant @s only hat:devilhorn
execute as @s[tag=!devilhorn] run tag @s add devilhorn
