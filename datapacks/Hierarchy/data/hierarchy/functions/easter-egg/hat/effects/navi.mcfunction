replaceitem entity @s armor.head diamond_shovel{display:{Name:"Navi",Lore:["HEY! LISTEN!"]},Unbreakable:1,HideFlags:4,Damage:63} 1
execute at @s[scores={Timer=1}] run summon armor_stand ~ ~2 ~ {CustomName:"{\"text\":\"HEY LISTEN!\"}",CustomNameVisible:1,Invisible:1,Silent:1,NoGravity:1,Marker:1,Tags:["Hat"]}
execute at @s[scores={Timer=11}] run summon armor_stand ~ ~2 ~ {CustomName:"{\"text\":\"WATCH OUT!\"}",CustomNameVisible:1,Invisible:1,Silent:1,NoGravity:1,Marker:1,Tags:["Hat"]}
execute at @s[scores={Timer=21}] run summon armor_stand ~ ~2 ~ {CustomName:"{\"text\":\"HEY!\"}",CustomNameVisible:1,Invisible:1,Silent:1,NoGravity:1,Marker:1,Tags:["Hat"]}
execute at @s[scores={Timer=31}] run summon armor_stand ~ ~2 ~ {CustomName:"{\"text\":\"LISTEN!\"}",CustomNameVisible:1,Invisible:1,Silent:1,NoGravity:1,Marker:1,Tags:["Hat"]}
