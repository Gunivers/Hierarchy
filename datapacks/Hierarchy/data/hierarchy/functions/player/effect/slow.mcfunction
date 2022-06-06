scoreboard players set @a[scores={EffNoMalus=..0,EffNoTp=..2,EffSlow=3000..}] EffNoTp 2
scoreboard players set @a[scores={EffNoMalus=..0,EffNoMove=..2,EffSlow=3000..}] EffNoMove 2
effect give @e[scores={EffNoMalus=..0,EffSlow=1..999},tag=IsPlaying] slowness 1 0 true
effect give @e[scores={EffNoMalus=..0,EffSlow=1000..1999},tag=IsPlaying] slowness 1 1 true
effect give @e[scores={EffNoMalus=..0,EffSlow=2000..2999},tag=IsPlaying] slowness 1 2 true
effect give @e[scores={EffNoMalus=..0,EffSlow=3000..3999},tag=IsPlaying] slowness 1 100 true
scoreboard players set @e[scores={EffNoMalus=..0,EffSlow=1000}] EffSlow 1
scoreboard players set @e[scores={EffNoMalus=..0,EffSlow=2000}] EffSlow 1
scoreboard players set @e[scores={EffNoMalus=..0,EffSlow=3000}] EffSlow 1

effect clear @e[scores={EffSlow=1},tag=IsPlaying] slowness
scoreboard players remove @e[scores={EffSlow=1..}] EffSlow 1
