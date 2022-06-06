replaceitem entity @s armor.head diamond_shovel{display:{Name:"Trump",Lore:["I will build a great wall!"]},Unbreakable:1,HideFlags:4,Damage:30} 1
execute at @s[scores={InGame=..0,Jump=2}] run summon falling_block ~ ~-0.5 ~ {BlockState:{Name:"minecraft:stone_bricks"},NoGravity:1b,Time:20,Tags:["Hat"]}
execute at @s[scores={InGame=..0,Jump=2}] run summon falling_block ~ ~0.5 ~ {BlockState:{Name:"minecraft:stone_bricks"},NoGravity:1b,Time:20,Tags:["Hat"]}
execute at @s[scores={InGame=..0,Jump=2}] run summon falling_block ~ ~1.5 ~ {BlockState:{Name:"minecraft:cobweb"},NoGravity:1b,Time:20,Tags:["Hat"]}

execute at @s[scores={InGame=..0,Jump=2}] run summon armor_stand ~ ~2.5 ~ {CustomName:"{\"text\":\"I will build a great wall!\"}",CustomNameVisible:1,Invisible:1,Silent:1,NoGravity:1,Marker:1,Tags:["Hat"]}
