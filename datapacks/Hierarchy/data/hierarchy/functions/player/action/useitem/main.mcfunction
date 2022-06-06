execute if entity @a[scores={UseIronAxe=1..}] run function hierarchy:player/action/useitem/ironaxe
execute if entity @a[scores={UseCarrot=1..}] run function hierarchy:player/action/useitem/carrot
execute if entity @a[scores={UseBow=1..}] run function hierarchy:player/action/useitem/bow
execute if entity @a[scores={UseEgg=1..}] run function hierarchy:player/action/useitem/egg
execute if entity @a[scores={UseSnowball=1..}] run function hierarchy:player/action/useitem/snowball
execute if entity @a[scores={UseFishing=1..}] run function hierarchy:player/action/useitem/fishing
tag @a remove TpEnd
execute if entity @a[scores={UseTp=1..}] run function hierarchy:player/action/useitem/tp
execute if entity @a[scores={UseXp=1..}] run function hierarchy:player/action/useitem/xp
execute if entity @a[scores={UsePotion=1..}] run function hierarchy:player/action/useitem/potion
