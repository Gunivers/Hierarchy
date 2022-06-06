#Sorting Hat
execute as @s[scores={Class=1..9},tag=!sortinghat] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Sorting ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={Class=1..9},tag=!sortinghat] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={Class=1..9},tag=!sortinghat] run advancement grant @s only hat:sortinghat
tag @s[scores={Class=1..9},tag=!sortinghat] add sortinghat

#Golden Hood
execute as @s[scores={Class=11..19},tag=!goldenhood] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Golden Hood ","color":"green"},{"text":"!","color":"dark_green","bold":"false"}]}
execute as @s[scores={Class=11..19},tag=!goldenhood] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={Class=11..19},tag=!goldenhood] run advancement grant @s only hat:goldenhood
tag @s[scores={Class=11..19},tag=!goldenhood] add goldenhood

#Link Hat
execute as @s[scores={Class=21..29},tag=!linkhat] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Link ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={Class=21..29},tag=!linkhat] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={Class=21..29},tag=!linkhat] run advancement grant @s only hat:linkhat
tag @s[scores={Class=21..29},tag=!linkhat] add linkhat

#Lion Hat
execute as @s[scores={Class=31..39},tag=!lion] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Lion ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={Class=31..39},tag=!lion] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={Class=31..39},tag=!lion] run advancement grant @s only hat:lion
tag @s[scores={Class=31..39},tag=!lion] add lion

#Death
execute as @s[scores={KillStreak=10..},tag=!death] run tellraw @s {"text":">> New Hat: ","color":"white","bold":"true","extra":[{"text":"You found the","color":"dark_green","bold":"false"},{"text":" Death ","color":"green"},{"text":"hat!","color":"dark_green","bold":"false"}]}
execute as @s[scores={KillStreak=10..},tag=!death] run playsound entity.experience_orb.pickup ambient @s
execute at @s[scores={KillStreak=10..},tag=!death] run advancement grant @s only hat:death
tag @s[scores={KillStreak=10..},tag=!death] add death

#Advancements
execute at @s[scores={KillStreak=2..}] run advancement grant @s only hierarchy:killstreaks/doublekill
execute at @s[scores={KillStreak=5..}] run advancement grant @s only hierarchy:killstreaks/fivekill
execute at @s[scores={KillStreak=7..}] run advancement grant @s only hierarchy:killstreaks/sevenkill
execute at @s[scores={KillStreak=10..}] run advancement grant @s only hierarchy:killstreaks/tenkill
