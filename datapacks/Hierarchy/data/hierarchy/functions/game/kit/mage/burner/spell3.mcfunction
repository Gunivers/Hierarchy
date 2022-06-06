execute as @a[gamemode=adventure,scores={Class=2,InGame=1..,Spell3=1498..}] at @s run playsound entity.firework_rocket.blast record @a ~ ~ ~ 2 0.5 1
execute at @e[gamemode=adventure,scores={Class=2,InGame=1..,Spell3=1498..}] run particle flame ~ ~5 ~ 0.5 10 0.5 0 100 force
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[gamemode=adventure,scores={Class=2,InGame=1..,Spell3=1498..}] run particle large_smoke ~ ~5 ~ 0.5 10 0.5 0 100 force

execute as @a[gamemode=adventure,scores={Class=2,InGame=1..,Spell3=1460}] at @s run function hierarchy:game/kit/mage/burner/spell3bis
execute as @a[gamemode=adventure,scores={Class=2,InGame=1..,Spell3=1480}] at @s run function hierarchy:game/kit/mage/burner/spell3bis
