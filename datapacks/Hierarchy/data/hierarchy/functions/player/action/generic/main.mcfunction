#Walk
scoreboard players add @a[scores={Sprint=1..}] IsWalking 10
execute if entity @a[scores={IsWalking=1..}] run function hierarchy:player/action/generic/walk

#Drop
execute if entity @a[scores={Drop=1..}] run function hierarchy:player/action/generic/drop

#Jump
execute if entity @a[scores={Jump=1..}] run function hierarchy:player/action/generic/jump

#Damage
execute if entity @a[scores={Damage=1..}] run function hierarchy:player/action/generic/damage

#TakeDamage
tag @e remove TakeDamage
execute if entity @a[scores={TakeDamage=1..}] run function hierarchy:player/action/generic/takedamage

#Arrow ID
execute if entity @a[tag=IsPlaying] run function hierarchy:player/action/generic/arrowid
