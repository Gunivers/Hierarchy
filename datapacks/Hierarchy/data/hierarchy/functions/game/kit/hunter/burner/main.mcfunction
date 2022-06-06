#Items
tag @a[scores={Class=22}] remove InRangeSpell1
execute as @a[tag=AffectByBlue] at @s run tag @a[scores={Class=22},tag=AffectByOrange,distance=..20] add InRangeSpell1
execute as @a[tag=AffectByOrange] at @s run tag @a[scores={Class=22},tag=AffectByBlue,distance=..20] add InRangeSpell1
replaceitem entity @a[gamemode=adventure,scores={Class=22,EffSilence=..0,InGame=1..,Spell1=..0},tag=InRangeSpell1] hotbar.1 experience_bottle{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Mark the nearest enemy. This is then visible to"}','{"text":"everyone for 5 seconds. If he dies during"}','{"text":"this period, all the fire hunters belonging"}','{"text":"to the pitcher\'s team recover 50% of their lives."}'],Name:"{\"text\":\"Welding  0✸  35s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=22,EffSilence=..0,InGame=1..,Spell1=..0},tag=!InRangeSpell1] hotbar.1 barrier{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Mark the nearest enemy. This is then visible to"}','{"text":"everyone for 5 seconds. If he dies during"}','{"text":"this period, all the fire hunters belonging"}','{"text":"to the pitcher\'s team recover 50% of their lives."}'],Name:"{\"text\":\"Welding  0✸  35s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=22,EffSilence=..0,InGame=1..,Spell2=..0}] hotbar.2 fishing_rod{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"The launcher ignites arrows"}','{"text":"he shoots for 5 seconds."}'],Name:"{\"text\":\"Flamming Arrow  0✸  15s\",\"color\":\"yellow\"}"},HideFlags:63} 1
replaceitem entity @a[gamemode=adventure,scores={Class=22,EffSilence=..0,InGame=1..,Spell3=..0}] hotbar.3 snowball{Unbreakable:1,ench:[{id:19,lvl:0}],display:{Lore:['{"text":"Shoot 5 arrows into the sky and they will"}','{"text":"fall back to the designated area. At the"}','{"text":"moment of impact, these arrows will create"}','{"text":"a hot zone, igniting all nearby enemies."}'],Name:"{\"text\":\"Atmospheric Heat  0✸  70s\",\"color\":\"red\"}"},HideFlags:63} 1

#Cooldown
scoreboard players set @a[gamemode=adventure,scores={Class=22,InGame=1..,UseXp=2}] Spell1 700
scoreboard players set @a[gamemode=adventure,scores={Class=22,InGame=1..,UseFishing=2}] Spell2 300
scoreboard players set @a[gamemode=adventure,scores={Class=22,InGame=1..,UseSnowball=2}] Spell3 1400

#Weapon upgrade
replaceitem entity @a[gamemode=adventure,scores={Class=22,EffSilencePrim=..0,HaveBow=..0,InGame=1..,UpgradedWeapon=1..}] hotbar.0 bow{Unbreakable:1,Enchantments:[{id:"minecraft:power",lvl:1s},{id:"minecraft:flame",lvl:1s},{id:"minecraft:infinity",lvl:1s}],display:{Lore:['{"text":"___"}'],Name:"{\"text\":\"Basic Attack UPGRADED  0✸  0s\",\"color\":\"aqua\"}"}} 1

#Spell 1
execute as @r[gamemode=adventure,scores={Class=22,Spell1=300..}] at @s run function hierarchy:game/kit/hunter/burner/spell1
execute if entity @r[scores={C2=1..}] run function hierarchy:game/kit/hunter/burner/spell1bis

#Spell 2
execute as @r[gamemode=adventure,scores={Class=22,Spell2=299..}] at @s run function hierarchy:game/kit/hunter/burner/spell2

#Spell 3
execute as @r[gamemode=adventure,scores={Class=22,Spell3=1240..}] at @s run function hierarchy:game/kit/hunter/burner/spell3



