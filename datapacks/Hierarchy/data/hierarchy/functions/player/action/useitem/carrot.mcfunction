tag @e[scores={UseCarrot=1}] add DirShoot
clear @a[gamemode=adventure,scores={UseCarrot=1}] carrot_on_a_stick
scoreboard players add @a[scores={UseCarrot=1..}] UseCarrot 1
scoreboard players set @e[scores={UseCarrot=3..}] UseCarrot 0
