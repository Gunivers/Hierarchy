scoreboard players remove @a[scores={C2=1..}] C2 1
scoreboard players set @a[scores={C2=1..,EffSlow=..2},tag=IsPlaying] EffSlow 2
execute at @a[scores={C2=1..},tag=IsPlaying] run particle flame ~ ~2.5 ~ 0.2 0.2 0.2 0 3
effect give @a[scores={C2=1..},tag=IsPlaying] glowing 1 0 true
