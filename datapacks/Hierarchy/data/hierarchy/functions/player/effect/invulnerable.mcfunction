effect give @e[scores={EffInvulnerable=1..},tag=IsPlaying] resistance 1 100 true
scoreboard players remove @e[scores={EffInvulnerable=1..}] EffInvulnerable 1
effect clear @a[scores={EffInvulnerable=1..}] wither
