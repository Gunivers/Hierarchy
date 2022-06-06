effect give @e[scores={EffJump=1..999},tag=IsPlaying] jump_boost 1 0 true
effect give @e[scores={EffJump=1000..1999},tag=IsPlaying] jump_boost 1 1 true
effect give @e[scores={EffJump=2000..2999},tag=IsPlaying] jump_boost 1 2 true
effect give @e[scores={EffJump=3000..3999},tag=IsPlaying] jump_boost 1 3 true
scoreboard players set @e[scores={EffJump=1000}] EffJump 0
scoreboard players set @e[scores={EffJump=2000}] EffJump 0
scoreboard players set @e[scores={EffJump=3000}] EffJump 0
scoreboard players remove @e[scores={EffJump=1..}] EffJump 1
