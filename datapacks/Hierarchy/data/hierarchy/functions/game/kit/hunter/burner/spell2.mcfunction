scoreboard players set @a[scores={Class=22,LifeState=500..,Spell2=299..}] UseBow 1
execute at @a[scores={Class=22,LifeState=500..,Spell2=299..}] run particle flame ~ ~1 ~ 0.3 1 0.3 0 50 force
scoreboard players set @a[scores={Class=22,LifeState=500..,Spell2=299..}] UpgradedWeapon 100
execute as @a[scores={Class=22,LifeState=500..,Spell2=299..}] at @s run playsound item.flintandsteel.use record @a[distance=..30] ~ ~ ~ 2 2 1
