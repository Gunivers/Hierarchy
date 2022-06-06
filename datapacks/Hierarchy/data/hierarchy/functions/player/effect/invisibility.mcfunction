effect give @e[scores={EffInvisibility=1..},tag=IsPlaying] invisibility 1 100 true
effect clear @e[scores={EffInvisibility=0,InGame=1..,LifeState=..500}] invisibility
effect clear @e[scores={EffInvisibility=1}] invisibility
scoreboard players remove @e[scores={EffInvisibility=1..}] EffInvisibility 1
