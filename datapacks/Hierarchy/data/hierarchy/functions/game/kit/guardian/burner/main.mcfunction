#Items
replaceitem entity @a[gamemode=adventure,scores={Class=32,EffNoTp=..0,EffSilence=..0,InGame=1..,Mana=40..,Spell1=..0}] hotbar.1 ender_pearl{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Disappears in instantaneous combustion\"}","{\"text\":\" and then reappears in another aura of fire.\"}","{\"text\":\"\"}","{\"text\":\"When it reappears, close enemies receive burns.\"}"],Name:"{\"text\":\"Embracing  40✸  30s\",\"color\":\"yellow\"}"},HideFlags:63} 1

replaceitem entity @a[gamemode=adventure,scores={Class=32,EffSilence=..0,InGame=1..,Mana=40..,Spell2=..0}] hotbar.2 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Create heat field that destroy all\"}","{\"text\":\" enemies projectiles\"}"],Name:"{\"text\":\"Warm Blessing  30✸  15s\",\"color\":\"yellow\"}"},HideFlags:63} 1

scoreboard players add @a ChargeSpell 0
replaceitem entity @a[gamemode=adventure,scores={ChargeSpell=..0,Class=32,EffSilence=..0,InGame=1..,Mana=10..,Spell3=0}] hotbar.3 carrot_on_a_stick{ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Charges up to 3 jets of fire\"}","{\"text\":\" suddenly igniting the target area.\"}","{\"text\":\"\"}","{\"text\":\"Enemies in the flaming areas are burned.\"}","{\"text\":\"\"}","{\"text\":\"Enemies are on the point of impact\"}","{\"text\":\" at the time of this impact receive\"}","{\"text\":\" slight damage and are slowed down.\"}"],Name:"{\"text\":\"Flame Thrower  10✸  7s\",\"color\":\"red\"}"},HideFlags:63,Damage:1} 1
replaceitem entity @a[gamemode=adventure,scores={ChargeSpell=..0,Class=32,EffSilence=..0,InGame=1..,Mana=10..,Spell3=1..140}] hotbar.3 carrot_on_a_stick{ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Charges up to 3 jets of fire\"}","{\"text\":\" suddenly igniting the target area.\"}","{\"text\":\"\"}","{\"text\":\"Enemies in the flaming areas are burned.\"}","{\"text\":\"\"}","{\"text\":\"Enemies are on the point of impact at the time of this impact receive\"}","{\"text\":\" slight damage and are slowed down.\"}"],Name:"{\"text\":\"Flame Thrower  10✸  7s\",\"color\":\"red\"}"},HideFlags:63,Damage:5} 1
replaceitem entity @a[gamemode=adventure,scores={ChargeSpell=..0,Class=32,EffSilence=..0,InGame=1..,Mana=10..,Spell3=141..280}] hotbar.3 carrot_on_a_stick{ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Charges up to 3 jets of fire\"}","{\"text\":\" suddenly igniting the target area.\"}","{\"text\":\"\"}","{\"text\":\"Enemies in the flaming areas are burned.\"}","{\"text\":\"\"}","{\"text\":\"Enemies are on the point of impact\"}","{\"text\":\" at the time of this impact receive\"}","{\"text\":\" slight damage and are slowed down.\"}"],Name:"{\"text\":\"Flame Thrower  10✸  7s\",\"color\":\"red\"}"},HideFlags:63,Damage:10} 1
replaceitem entity @a[gamemode=adventure,scores={ChargeSpell=..0,Class=32,EffSilence=..0,InGame=1..,Mana=10..,Spell3=281..420}] hotbar.3 carrot_on_a_stick{ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Charges up to 3 jets of fire\"}","{\"text\":\" suddenly igniting the target area.\"}","{\"text\":\"\"}","{\"text\":\"Enemies in the flaming areas are burned.\"}","{\"text\":\"\"}","{\"text\":\"Enemies are on the point of impact\"}","{\"text\":\" at the time of this impact receive\"}","{\"text\":\" slight damage and are slowed down.\"}"],Name:"{\"text\":\"Flame Thrower  10✸  7s\",\"color\":\"red\"}"},HideFlags:63,Damage:15} 1
replaceitem entity @a[gamemode=adventure,scores={ChargeSpell=..0,Class=32,EffSilence=..0,InGame=1..,Mana=10..,Spell3=421..560}] hotbar.3 carrot_on_a_stick{ench:[{id:19,lvl:0}],display:{Lore:["{\"text\":\"Charges up to 3 jets of fire\"}","{\"text\":\" suddenly igniting the target area.\"}","{\"text\":\"\"}","{\"text\":\"Enemies in the flaming areas are burned.\"}","{\"text\":\"\"}","{\"text\":\"Enemies are on the point of impact\"}","{\"text\":\" at the time of this impact receive\"}","{\"text\":\" slight damage and are slowed down.\"}"],Name:"{\"text\":\"Flame Thrower  10✸  7s\",\"color\":\"red\"}"},HideFlags:63,Damage:20} 1

#Mana
replaceitem entity @a[gamemode=adventure,scores={Class=32,EffSilence=..0,InGame=1..,Mana=..39,Spell1=0}] hotbar.1 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=32,UsePotion=2}] Mana 40
replaceitem entity @a[gamemode=adventure,scores={Class=32,EffSilence=..0,InGame=1..,Mana=..29,Spell2=0}] hotbar.2 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=32,UseTp=2}] Mana 30
replaceitem entity @a[gamemode=adventure,scores={Class=32,EffSilence=..0,InGame=1..,Mana=..9,Spell3=0}] hotbar.3 gray_dye{display:{Name:"{\"text\":\"Not enough mana!\",\"color\":\"dark_red\"}"},ench:[{id:19,lvl:0}]} 1
scoreboard players remove @a[scores={Class=32,UseSnowball=2}] Mana 10

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=32,InGame=1..,UseTp=2}] Spell1 600
scoreboard players set @a[gamemode=adventure,scores={Class=32,InGame=1..,UseFishing=2}] Spell2 600
scoreboard players add @a[gamemode=adventure,scores={Class=32,InGame=1..,UseCarrot=2}] Spell3 140
scoreboard players set @a[gamemode=adventure,scores={Class=32,InGame=1..,UseCarrot=2}] ChargeSpell 10
scoreboard players remove @a[scores={ChargeSpell=1..,Class=32}] ChargeSpell 1
replaceitem entity @a[gamemode=adventure,scores={Class=32,EffSilence=..0,InGame=1..,Spell3=561..}] hotbar.3 gray_dye{display:{Name:"{\"text\":\"Cooldown\",\"color\":\"gray\"}"}} 1

#No Move
replaceitem entity @a[gamemode=adventure,scores={Class=32,EffNoTp=1..,InGame=1..,Spell1=..0}] hotbar.1 barrier{display:{Name:"{\"text\":\"Don't Move!\",\"color\":\"dark_red\"}"}} 1
replaceitem entity @a[gamemode=adventure,scores={ChargeSpell=1..,Class=32,InGame=1..,Spell1=..0}] hotbar.3 barrier{display:{Name:"{\"text\":\"Wait ...\",\"color\":\"dark_red\"}"}} 1

#Spell1
execute as @e[type=armor_stand,scores={ParticleClass=2,Timer=37..},tag=EnderPearl] at @s run function hierarchy:game/kit/guardian/burner/spell1

#Spell2
execute as @a[scores={Class=32,Spell2=600}] at @s run function hierarchy:game/kit/guardian/burner/spell2-summon
execute as @a[scores={Class=32,Spell2=400..600}] at @s run function hierarchy:game/kit/guardian/burner/spell2-particle
# execute if entity @e[tag=322G] run function hierarchy:game/kit/guardian/burner/spell2bis

#Spell3
tag @e[type=armor_stand,scores={Class=-32},tag=DirMoving] add 323B
tag @e[type=armor_stand,scores={Class=32},tag=DirMoving] add 323R
tag @e[type=armor_stand,scores={Class=32},tag=DirMoving] add 323G
tag @e[type=armor_stand,scores={Class=-32},tag=DirMoving] add 323G
execute as @a[scores={Class=32,UseCarrot=2},tag=IsPlaying] at @s run playsound entity.ender_dragon.flap record @a[distance=..30] ~ ~ ~ 2 2 1
execute if entity @e[tag=323G] run function hierarchy:game/kit/guardian/burner/spell3





