#Cooldown display
scoreboard players set @a Cooldown 0
scoreboard players set @a[scores={InGame=1..,Spell1=1..},nbt={SelectedItemSlot:1}] Cooldown -1
scoreboard players set @a[scores={InGame=1..,Spell2=1..},nbt={SelectedItemSlot:2}] Cooldown -2
scoreboard players set @a[scores={InGame=1..,Spell3=1..},nbt={SelectedItemSlot:3}] Cooldown -3

replaceitem entity @a[gamemode=adventure,scores={EffSilence=..0,InGame=1..,Spell1=1..}] hotbar.1 gray_dye{display:{Name:"Cooldown"}} 1
replaceitem entity @a[gamemode=adventure,scores={EffSilence=..0,InGame=1..,Spell2=1..}] hotbar.2 gray_dye{display:{Name:"Cooldown"}} 1
replaceitem entity @a[gamemode=adventure,scores={Class=33..,EffSilence=..0,InGame=1..,Spell3=1..}] hotbar.3 gray_dye{display:{Name:"Cooldown"}} 1
replaceitem entity @a[gamemode=adventure,scores={Class=..31,EffSilence=..0,InGame=1..,Spell3=1..}] hotbar.3 gray_dye{display:{Name:"Cooldown"}} 1
