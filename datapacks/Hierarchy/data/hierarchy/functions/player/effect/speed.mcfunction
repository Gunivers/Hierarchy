effect give @e[scores={EffSpeed=1..999},tag=IsPlaying] speed 1 1 true
effect give @e[scores={EffSpeed=1000..1999},tag=IsPlaying] speed 1 2 true
effect give @e[scores={EffSpeed=2000..2999},tag=IsPlaying] speed 1 3 true
effect give @e[scores={EffSpeed=3000..3999},tag=IsPlaying] speed 1 15 true
scoreboard players set @e[scores={EffSpeed=1000}] EffSpeed 0
scoreboard players set @e[scores={EffSpeed=2000}] EffSpeed 0
scoreboard players set @e[scores={EffSpeed=3000}] EffSpeed 0
scoreboard players remove @e[scores={EffSpeed=1..}] EffSpeed 1
