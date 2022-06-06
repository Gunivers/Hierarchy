replaceitem entity @a[gamemode=adventure,scores={EffSilencePrim=1..,InGame=1..}] hotbar.0 barrier{display:{Name:"{\"text\":\"Silence ...\",\"color\":\"dark_red\"}"}} 1
scoreboard players remove @e[scores={EffSilencePrim=1..}] EffSilencePrim 1
replaceitem entity @a[gamemode=adventure,scores={Class=31,EffSilencePrim=1,InGame=1..}] weapon.offhand air
