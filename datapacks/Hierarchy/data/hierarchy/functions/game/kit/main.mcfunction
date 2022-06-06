#Mages

execute if entity @a[scores={Class=1..6},tag=IsPlaying] run function hierarchy:game/kit/mage/main
execute if entity @a[scores={Class=11..16},tag=IsPlaying] run function hierarchy:game/kit/assassin/main
execute if entity @a[scores={Class=21..26},tag=IsPlaying] run function hierarchy:game/kit/hunter/main

tag @a remove Guardian
tag @a[gamemode=adventure,scores={Class=31..39,InGame=1..}] add Guardian
tag @a[gamemode=adventure,scores={Class=24,InGame=1..,UpgradedWeapon=..-1}] add Guardian
execute if entity @a[tag=Guardian] run function hierarchy:game/kit/guardian/main

function hierarchy:game/kit/armor