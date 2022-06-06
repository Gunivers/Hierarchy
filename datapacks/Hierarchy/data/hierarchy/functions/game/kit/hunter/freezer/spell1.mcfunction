scoreboard players remove @a[scores={Class=24,InGame=1..,Spell1=299}] UpgradedWeapon 1
scoreboard players set @a[scores={Class=24,InGame=1..,UpgradedWeapon=..-2}] UpgradedWeapon 0
execute as @a[scores={Class=24,InGame=1..,Spell1=299}] at @s run playsound entity.creeper.hurt record @a[distance=..30] ~ ~ ~ 2 2 1
scoreboard players set @a[scores={Class=24,InGame=1..,Spell1=299..}] Spell2 0
# replaceitem entity @a[m=2,score_InGame_min=1,score_Class_min=24,score_Class=24,score_Spell1_min=299] slot.container.16 tipped_arrow 5 0 {Potion:slowness}
