replaceitem entity @a[scores={EffPlane=1..,HaveElytra=..0,InGame=1..}] armor.chest elytra 1
scoreboard players remove @a[scores={EffPlane=1..}] EffPlane 1
scoreboard players add @a HaveElytra 0
scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] HaveElytra 2
scoreboard players remove @a[scores={HaveElytra=1..}] HaveElytra 1
