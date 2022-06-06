execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell3=..-1}] run particle cloud ~ ~ ~ 0.5 0.3 0.5 0 3 force

#Player class(25) Spell3 InGame(1:) m:adventure {bloc class(25)Spell3}
effect give @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell3=-1799..-1798}] levitation 1 15 true
effect give @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell3=-1777..-1621}] levitation 1 255 true

scoreboard players set @a[gamemode=adventure,scores={Class=25,EffSilencePrim=..20,InGame=1..,Spell3=..-1}] EffSilencePrim 20

effect give @a[scores={Class=25,Spell3=..-1},tag=IsPlaying] glowing 1 1 true

scoreboard players add @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell3=..-1601}] Spell3 1
scoreboard players set @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell3=-1600}] Spell3 1800

effect give @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell3=..-1601}] resistance 1 100 true

replaceitem entity @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell3=-1780..-1601}] hotbar.3 carrot_on_a_stick{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"___"}'],Name:"SHOOT!"},HideFlags:63} 1
scoreboard players set @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell3=-1660..-1601,UseCarrot=2}] Spell3 -1600
scoreboard players set @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell3=-1720..-1661,UseCarrot=2}] Spell3 -1662
scoreboard players set @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell3=-1780..-1721,UseCarrot=2}] Spell3 -1722
replaceitem entity @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell3=..-1781}] hotbar.3 gunpowder{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"___"}'],Name:"Wait ..."},HideFlags:63} 1
#END: class(25)Spell3

#playsound
execute as @a[gamemode=adventure,scores={Class=25,InGame=1..,UseCarrot=2}] at @s run playsound entity.firework_rocket.blast record @a[distance=..10] ~ ~ ~ 2 0.5 1
execute as @a[gamemode=adventure,scores={Class=25,InGame=1..,UseXp=2}] at @s run playsound entity.ender_dragon.flap record @a[distance=..10] ~ ~ ~ 2 1 1

#Player InGame(1:) class(25) Spell3(:-1) m:adventure {bloc class(25)Spell3(-1)}
scoreboard players set @a[scores={Class=25,InGame=1..,Spell3=..-1}] EffInvulnerable 40
execute as @a[gamemode=adventure,scores={Class=25,InGame=1..,Spell3=..-1}] at @s run kill @e[type=arrow,distance=..3]
scoreboard players set @a[gamemode=adventure,scores={Class=25,EffSilence=..2,InGame=1..,Spell3=..-1}] EffSilence 2
# scoreboard players set @a[score_Class_min=25,score_Class=25,score_Spell3=-1,score_InGame_min=1,m=2,score_EffEffSilencePrim=2] EffSilencePrim 2
scoreboard players set @a[gamemode=adventure,scores={Class=25,EffInvulnerable=..40,InGame=1..,Spell3=..-1}] EffInvulnerable 80
#END: class(25)Spell3(-1)
