execute as @a[x=2000.5,y=100,z=2000.5,gamemode=adventure,scores={Back=0,InGame=1..},distance=70..] at @s run function hierarchy:game/book/give

scoreboard players set @a[scores={Back=-2..,Drop=..0,InGame=1..},nbt={SelectedItem:{id:"minecraft:written_book"}}] Back -3
scoreboard players add @a[scores={Back=..-1}] Back 1
scoreboard players set @a[scores={Drop=1..4},tag=IsPlaying,nbt={SelectedItem:{id:"minecraft:written_book"}}] Back 2

scoreboard players enable @a Menu
execute as @r[scores={Back=1..}] at @s run function hierarchy:game/book/back
execute as @r[scores={Menu=1..}] at @s run function hierarchy:game/book/shop
execute as @r[scores={Menu=..-1}] at @s run function hierarchy:game/book/fastmessages
execute as @a[scores={Menu=1000..}] at @s run function hierarchy:game/book/surrend
