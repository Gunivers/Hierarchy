
scoreboard players add @a[scores={Sprint=1..}] Sprint 100
scoreboard players set @a[scores={Sprint=200..}] Sprint 0

scoreboard players set @a[scores={IsWalking=300..}] IsWalking 0
scoreboard players add @a[scores={IsWalking=10..}] IsWalking 100
scoreboard players remove @a[scores={IsWalking=1..}] IsWalking 1
