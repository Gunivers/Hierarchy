effect give @e[scores={EffResistance=1..999},tag=IsPlaying] resistance 1 0 true
effect give @e[scores={EffResistance=1000..1999},tag=IsPlaying] resistance 1 1 true
effect give @e[scores={EffResistance=2000..2999},tag=IsPlaying] resistance 1 2 true
effect give @e[scores={EffResistance=3000..3999},tag=IsPlaying] resistance 1 3 true
scoreboard players set @e[scores={EffResistance=1000}] EffResistance 0
scoreboard players set @e[scores={EffResistance=2000}] EffResistance 0
scoreboard players set @e[scores={EffResistance=3000}] EffResistance 0
effect clear @e[scores={EffResistance=0..,EffRessitance=..0}] resistance
scoreboard players remove @e[scores={EffResistance=0..}] EffResistance 1
