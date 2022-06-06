#Give damage
execute as @a[team=Orange,scores={Damage=1..}] run scoreboard players operation @p[team=Blue,scores={TakeDamage=1..}] TouchID = @s ID
execute as @a[team=Blue,scores={Damage=1..}] run scoreboard players operation @p[team=Orange,scores={TakeDamage=1..}] TouchID = @s ID
scoreboard players set @a[scores={Class=11..16,Damage=1..,EffRegen=..20}] EffRegen 20
scoreboard players set @a[scores={Damage=1..}] Damage 0

