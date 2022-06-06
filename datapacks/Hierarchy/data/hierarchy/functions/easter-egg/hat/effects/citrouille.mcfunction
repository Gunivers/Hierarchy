replaceitem entity @s armor.head diamond_shovel{display:{Name:"Pumpkin Hat",Lore:["Pumpkins scream in the dead of night"]},Unbreakable:1,HideFlags:4,Damage:2} 1
execute at @s run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 2
execute at @s[scores={InGame=..0,Timer=1}] run summon bat ~ ~ ~ {Tags:["Hat"]}
execute at @s[scores={InGame=..0,Timer=21}] run summon bat ~ ~ ~ {Tags:["Hat"]}
