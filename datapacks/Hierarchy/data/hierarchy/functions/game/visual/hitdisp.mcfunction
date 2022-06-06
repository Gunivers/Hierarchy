execute as @a[gamemode=adventure,tag=IsPlaying] at @s run scoreboard players operation @p[gamemode=adventure,tag=IsPlaying,distance=..0] DamageIndicDisp = @p[gamemode=adventure,tag=IsPlaying,distance=..0] DamageIndicHp
execute as @a[gamemode=adventure,tag=IsPlaying] at @s run scoreboard players operation @p[gamemode=adventure,tag=IsPlaying,distance=..0] DamageIndicDisp -= @p[gamemode=adventure,tag=IsPlaying,distance=..0] health
scoreboard players set @a[scores={LifeState=..499}] DamageIndicDisp 0
execute as @r[gamemode=adventure,scores={DamageIndicDisp=1..,InGame=1..}] at @s run function hierarchy:game/visual/damagedisp
execute as @r[gamemode=adventure,scores={DamageIndicDisp=..-1,InGame=1..}] at @s run function hierarchy:game/visual/healdisp
execute as @e[type=!player,tag=DamDisp] at @s run teleport @s ~ ~0.05 ~
kill @e[type=!player,scores={Timer=40..},tag=DamDisp]
scoreboard players set @a DamageIndicDisp 0
execute as @a[gamemode=adventure,scores={InGame=1..}] at @s run scoreboard players operation @p[gamemode=adventure,scores={InGame=1..},distance=..1] DamageIndicHp = @p[gamemode=adventure,scores={InGame=1..},distance=..1] health
