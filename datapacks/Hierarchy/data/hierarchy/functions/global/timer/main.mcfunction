function hierarchy:global/timer/0.5s
function hierarchy:global/timer/2s
execute if entity @a[scores={Spell1=1..},tag=IsPlaying] run function hierarchy:global/timer/spell1
execute if entity @a[scores={Spell2=1..},tag=IsPlaying] run function hierarchy:global/timer/spell2
execute if entity @a[scores={Spell3=1..},tag=IsPlaying] run function hierarchy:global/timer/spell3

scoreboard players remove @a[scores={UpgradedWeapon=1..}] UpgradedWeapon 1
scoreboard players add @a[gamemode=adventure,tag=InGame] TimePlayed 1
