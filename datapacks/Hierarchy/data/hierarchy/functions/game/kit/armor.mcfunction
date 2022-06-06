execute as @a[scores={InGame=1}] run scoreboard players operation @s Var1 = @s Class

execute as @a[scores={InGame=1,EffInvisibility=0,EffPlane=0},team=Blue] unless entity @s[scores={Class=31..36}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.chest leather_chestplate{display:{Name:"{\"text\":\"Armor\"}",color:884479},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,EffPlane=0},team=Orange] unless entity @s[scores={Class=31..36}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.chest leather_chestplate{display:{Name:"{\"text\":\"Armor\"}",color:16733184},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2}],HideFlags:7,Unbreakable:1} 1

execute as @a[scores={InGame=1,EffInvisibility=0,EffPlane=0},team=Blue] if entity @s[scores={Class=31..36,health=41..}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.chest leather_chestplate{display:{Name:"{\"text\":\"Armor\"}",color:884479},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2},{id:"minecraft:thorns",lvl:1}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,EffPlane=0},team=Orange] if entity @s[scores={Class=31..36,health=41..}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.chest leather_chestplate{display:{Name:"{\"text\":\"Armor\"}",color:16733184},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2},{id:"minecraft:thorns",lvl:1}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,EffPlane=0},team=Blue] if entity @s[scores={Class=31..36,health=21..40}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.chest leather_chestplate{display:{Name:"{\"text\":\"Armor\"}",color:884479},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2},{id:"minecraft:thorns",lvl:2}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,EffPlane=0},team=Orange] if entity @s[scores={Class=31..36,health=21..40}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.chest leather_chestplate{display:{Name:"{\"text\":\"Armor\"}",color:16733184},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2},{id:"minecraft:thorns",lvl:2}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,EffPlane=0},team=Blue] if entity @s[scores={Class=31..36,health=..20}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.chest leather_chestplate{display:{Name:"{\"text\":\"Armor\"}",color:884479},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2},{id:"minecraft:thorns",lvl:3}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,EffPlane=0},team=Orange] if entity @s[scores={Class=31..36,health=..20}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.chest leather_chestplate{display:{Name:"{\"text\":\"Armor\"}",color:16733184},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2},{id:"minecraft:thorns",lvl:3}],HideFlags:7,Unbreakable:1} 1

execute as @a[scores={InGame=1,EffInvisibility=1..}] run replaceitem entity @s armor.chest air 1

execute as @a[scores={InGame=1,EffInvisibility=0,Var1=1..6}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.feet iron_boots{display:{Name:"{\"text\":\"Armor\"}"},Enchantments:[{id:"minecraft:feather_falling",lvl:127}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,Var1=11..16}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.feet leather_boots{display:{Name:"{\"text\":\"Armor\"}",color:2236962},Enchantments:[{id:"minecraft:feather_falling",lvl:127}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,Var1=21..26}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.feet chainmail_boots{display:{Name:"{\"text\":\"Armor\"}"},Enchantments:[{id:"minecraft:feather_falling",lvl:127}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,Var1=31..36}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.feet diamond_boots{display:{Name:"{\"text\":\"Armor\"}"},Enchantments:[{id:"minecraft:feather_falling",lvl:127}],HideFlags:7,Unbreakable:1} 1

execute as @a[scores={InGame=1,EffInvisibility=1..}] run replaceitem entity @s armor.feet golden_boots{display:{Name:"{\"text\":\"Armor\"}"},Enchantments:[{id:"minecraft:feather_falling",lvl:127}],HideFlags:7,Unbreakable:1} 1

execute as @a[scores={InGame=1,EffInvisibility=0}] run scoreboard players operation @s Var1 %= 10 Constant
execute as @a[scores={InGame=1,EffInvisibility=0}] run scoreboard players operation @s Var1 %= 6 Constant
execute as @a[scores={InGame=1,EffInvisibility=0}] run scoreboard players set @s[scores={Var1=0}] Var1 6

execute as @a[scores={InGame=1,EffInvisibility=0,Var1=1}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.legs leather_leggings{display:{Name:"{\"text\":\"Armor\"}",color:8455672},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,Var1=2}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.legs leather_leggings{display:{Name:"{\"text\":\"Armor\"}",color:15645696},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,Var1=3}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.legs leather_leggings{display:{Name:"{\"text\":\"Armor\"}",color:16777215},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,Var1=4}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.legs leather_leggings{display:{Name:"{\"text\":\"Armor\"}",color:5546495},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,Var1=5}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.legs leather_leggings{display:{Name:"{\"text\":\"Armor\"}",color:8308623},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=0,Var1=6}] unless entity @s[scores={Hat=28}] run replaceitem entity @s armor.legs leather_leggings{display:{Name:"{\"text\":\"Armor\"}",color:16722731},Enchantments:[{id:"minecraft:aqua_affinity",lvl:2}],HideFlags:7,Unbreakable:1} 1
execute as @a[scores={InGame=1,EffInvisibility=1..}] run replaceitem entity @s armor.legs air 1

execute as @a[scores={Hat=28}] run replaceitem entity @s armor.chest air 1
execute as @a[scores={Hat=28}] run replaceitem entity @s armor.legs air 1
execute as @a[scores={Hat=28}] run replaceitem entity @s armor.feet air 1
