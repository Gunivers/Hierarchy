scoreboard players set @a Var1 0
scoreboard players set @a[scores={InGame=1..,Spell1=1..},nbt={SelectedItemSlot:1}] Var1 -1
scoreboard players set @a[scores={InGame=1..,Spell2=1..},nbt={SelectedItemSlot:2}] Var1 -2
scoreboard players set @a[scores={InGame=1..,Spell3=1..},nbt={SelectedItemSlot:3}] Var1 -3

scoreboard players set @a[scores={Class=32,InGame=1..,Spell3=1..},nbt={SelectedItemSlot:3}] Var1 -3
tag @a remove CustomCd
tag @a[scores={Class=32,Var1=-3}] add CustomCd

execute as @a[scores={Var1=-1}] run scoreboard players operation @s Var1 = @s Spell1
execute as @a[scores={Var1=-2}] run scoreboard players operation @s Var1 = @s Spell2
execute as @a[scores={Var1=-3}] run scoreboard players operation @s Var1 = @s Spell3
scoreboard players add @a[scores={Var1=1..}] Var1 20
execute as @a[scores={Var1=1..}] run scoreboard players operation @s Var1 /= 20 Constant

execute as @a[scores={Class=32},tag=CustomCd] run scoreboard players operation @s Var1 %= 7 Constant
scoreboard players set @a[scores={Class=32,Spell3=1..,Var1=..0},tag=CustomCd] Var1 7

execute as @a[gamemode=adventure,scores={Back=..0,InGame=1..,Var1=..0,health=20..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"health"},"color":"dark_red","bold":true},{"text":"\u2764   ","color":"dark_red","bold":false},{"score":{"name":"@s","objective":"Mana"},"color":"dark_blue","bold":true},{"text":"\u2738   ","color":"dark_blue","bold":false},{"score":{"name":"@s","objective":"Saturation"},"color":"green","bold":true},{"text":"\u27a0   ","color":"green","bold":false},{"score":{"name":"@s","objective":"Coins"},"color":"gold","bold":true},{"text":"\u272a","color":"gold","bold":false}]
execute as @a[gamemode=adventure,scores={Back=..0,InGame=1..,Var1=1..,health=20..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"health"},"color":"dark_red","bold":true},{"text":"\u2764   ","color":"dark_red","bold":false},{"score":{"name":"@s","objective":"Mana"},"color":"dark_blue","bold":true},{"text":"\u2738   ","color":"dark_blue","bold":false},{"score":{"name":"@s","objective":"Saturation"},"color":"green","bold":true},{"text":"\u27a0   ","color":"green","bold":false},{"score":{"name":"@s","objective":"Coins"},"color":"gold","bold":true},{"text":"\u272a   ","color":"gold","bold":false},{"score":{"name":"@s","objective":"Var1"},"color":"gray","bold":true},{"text":"s","color":"gray","bold":false}]
execute as @a[gamemode=adventure,scores={Back=..0,InGame=1..,Var1=..0,health=..19}] run title @s actionbar ["",{"score":{"name":"@s","objective":"health"},"color":"dark_red","bold":true,"underlined":true},{"text":"\u2764","color":"dark_red","bold":false,"underlined":true},{"text":"   "},{"score":{"name":"@s","objective":"Mana"},"color":"dark_blue","bold":true},{"text":"\u2738   ","color":"dark_blue","bold":false},{"score":{"name":"@s","objective":"Saturation"},"color":"green","bold":true},{"text":"\u27a0   ","color":"green","bold":false},{"score":{"name":"@s","objective":"Coins"},"color":"gold","bold":true},{"text":"\u272a","color":"gold","bold":false}]
execute as @a[gamemode=adventure,scores={Back=..0,InGame=1..,Var1=1..,health=..19}] run title @s actionbar ["",{"score":{"name":"@s","objective":"health"},"color":"dark_red","bold":true,"underlined":true},{"text":"\u2764","color":"dark_red","bold":false,"underlined":true},{"text":"   "},{"score":{"name":"@s","objective":"Mana"},"color":"dark_blue","bold":true},{"text":"\u2738   ","color":"dark_blue","bold":false},{"score":{"name":"@s","objective":"Saturation"},"color":"green","bold":true},{"text":"\u27a0   ","color":"green","bold":false},{"score":{"name":"@s","objective":"Coins"},"color":"gold","bold":true},{"text":"\u272a   ","color":"gold","bold":false},{"score":{"name":"@s","objective":"Var1"},"color":"gray","bold":true},{"text":"s","color":"gray","bold":false}]
