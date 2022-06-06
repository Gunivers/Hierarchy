effect give @e[scores={EffInvulnerable=..0,EffNoMalus=..0,EffPoison=1..999,Timer=1},tag=IsPlaying] wither 1 1 true
effect give @e[scores={EffInvulnerable=..0,EffNoMalus=..0,EffPoison=1..999,Timer=14},tag=IsPlaying] wither 1 1 true
effect give @e[scores={EffInvulnerable=..0,EffNoMalus=..0,EffPoison=1..999,Timer=27},tag=IsPlaying] wither 1 1 true
effect give @e[scores={EffInvulnerable=..0,EffNoMalus=..0,EffPoison=1000..1999},tag=IsPlaying] wither 1 1 true
effect clear @a[scores={EffInvulnerable=..0,EffNoMalus=..0,EffPoison=0}] wither
scoreboard players set @e[scores={EffPoison=1000}] EffPoison 0
scoreboard players remove @e[scores={EffPoison=0..}] EffPoison 1
