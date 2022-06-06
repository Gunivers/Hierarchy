replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=9,HaveObjective=0},tag=CMDCrazy1] armor.head command_block{display:{Name:"Command block crazy",Lore:["One day in the head of LeiRoF"]},Unbreakable:1,HideFlags:4} 1
replaceitem entity @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=9,HaveObjective=0},tag=CMDCrazy2] armor.head repeating_command_block{display:{Name:"Command block crazy",Lore:["One day in the head of LeiRoF"]},Unbreakable:1,HideFlags:4} 1

tag @a[scores={Hat=9}] add HatCMD
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=9,HaveObjective=0,Timer=1},tag=HatCMDSheep] run summon armor_stand ~ ~2 ~ {CustomName:"{\"text\":\"/summon Sheep ~ ~ ~ \"}",CustomNameVisible:1,Invisible:1,Silent:1,NoGravity:1,Marker:1,Tags:["Hat"]}
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=9,HaveObjective=0,Timer=1},tag=HatCMDSheep] run summon sheep ~ ~ ~ {Age:-1000,Silent:1,Tags:["Hat"]}
tag @a[scores={Hat=9,Timer=29},tag=HatCMDSheep] add HatCMDKill
tag @a[scores={Hat=9,Timer=29},tag=HatCMDSheep] remove HatCMDSheep
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=9,HaveObjective=0,Timer=1},tag=HatCMDKill] run summon armor_stand ~ ~2 ~ {CustomName:"{\"text\":\"/kill @all\"}",CustomNameVisible:1,Invisible:1,Silent:1,NoGravity:1,Marker:1,Tags:["Hat"]}
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=9,HaveObjective=0,Timer=1},tag=HatCMDKill] run summon armor_stand ~ ~1.8 ~ {CustomName:"{\"text\":\"Entity '@all' cannot be found\"}",CustomNameVisible:1,Invisible:1,Silent:1,NoGravity:1,Marker:1,Tags:["Hat"],Team:DamageIndic2}
tag @a[scores={Hat=9,Timer=28},tag=HatCMDKill] add HatCMDBlock
tag @a[scores={Hat=9,Timer=28},tag=HatCMDKill] remove HatCMDKill
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=9,HaveObjective=0,Timer=1},tag=HatCMDBlock] run summon armor_stand ~ ~2 ~ {CustomName:"{\"text\":\"/setblock ~ ~ ~ bedrock\"}",CustomNameVisible:1,Invisible:1,Silent:1,NoGravity:1,Marker:1,Tags:["Hat"]}
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=9,HaveObjective=0,Timer=1},tag=HatCMDBlock] run summon falling_block ~ ~ ~ {NoGravity:1,BlockState:{Name:"minecraft:bedrock"},Tags:["Hat"],Time:20}
tag @a[scores={Hat=9,Timer=27},tag=HatCMDBlock] add HatCMDGive
tag @a[scores={Hat=9,Timer=27},tag=HatCMDBlock] remove HatCMDBlock
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=9,HaveObjective=0,Timer=1},tag=HatCMDGive] run summon armor_stand ~ ~2 ~ {CustomName:"{\"text\":\"/give @a[r=5] emerald 20\"}",CustomNameVisible:1,Invisible:1,Silent:1,NoGravity:1,Marker:1,Tags:["Hat"]}
execute at @a[gamemode=adventure,scores={EffInvisibility=..0,EffInvulnerable=..0,EffScare=..0,Hat=9,HaveObjective=0,Timer=1..20},tag=HatCMDGive] at @a[gamemode=!spectator,distance=..5] run summon item ~ ~0.5 ~ {Item:{id:"emerald",Damage:0,Count:1},Tags:["Hat"],PickupDelay:32767}
tag @a[scores={Hat=9,Timer=26},tag=HatCMDGive] add HatCMDWait
tag @a[scores={Hat=9,Timer=26},tag=HatCMDGive] remove HatCMDGive
tag @a[scores={Hat=9,Timer=30},tag=HatCMDWait] add HatCMDSheep
tag @a[scores={Hat=9,Timer=30},tag=HatCMDWait] remove HatCMDWait
