#Tips
tag @a[scores={LifeState=400}] add TIP
execute as @a[scores={Timer=0..39},tag=TIP] at @s run playsound minecraft:block.wood_button.click_on record @p ~ ~ ~ 1 2 0
tellraw @a[scores={Timer=0..1},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"You can return to your base and recover your life and mana by dropping the book.","color":"yellow","bold":false}]
tellraw @a[scores={Timer=2..3},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"You can send fast messages to your team thanks to the book.","color":"yellow","bold":false}]
tellraw @a[scores={Timer=4..5},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"You can buy potions in the book.","color":"yellow","bold":false}]
tellraw @a[scores={Timer=6..7},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"Use '1', '2', '3' and '4' keys to access quickly to your spells","color":"yellow","bold":false}]
tellraw @a[scores={Timer=8..9},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"Stand on the plateform at your base to regain some health points","color":"yellow","bold":false}]
tellraw @a[scores={Timer=10..11},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"Jungles allow you to be invisible. Moreover, it makes you faster if you are an assassin","color":"yellow","bold":false}]
tellraw @a[scores={Timer=12..13},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"All your spells have been thought to make powerful combos!","color":"yellow","bold":false}]
tellraw @a[scores={Timer=14..15},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"If you want another map like this, please help us by making a gift on ","color":"yellow","bold":false},{"text":"our Utip page","color":"aqua","clickEvent":{"action":"open_url","value":"https://www.utip.io/gunivers"}},{"text":" :)","color":"yellow","bold":false}]
tellraw @a[scores={Timer=16..17},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"An operator can make a player join during a game by giving him the tag 'Join'.","color":"yellow","bold":false}]
tellraw @a[scores={Timer=18..19},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"You can vote to surrend thanks to your book.","color":"yellow","bold":false}]
tellraw @a[scores={Timer=20..21},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"All maps are designed to be fully accessible without spell.","color":"yellow","bold":false}]
tellraw @a[scores={Timer=22..23},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"You can find all useful admin commands on our website (www.gunivers.net).","color":"yellow","bold":false}]
tellraw @a[scores={Timer=24..25},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"You can find all kits description on our website (www.gunivers.net)","color":"yellow","bold":false}]
tellraw @a[scores={Timer=26..27},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"Go to the dressing (in the lobby) to choose your hat","color":"yellow","bold":false}]
tellraw @a[scores={Timer=28..29},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"Crush mites to earn more coins!","color":"yellow","bold":false}]
tellraw @a[scores={Timer=30..31},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"Minions are small but they are not weak. Let them fight for you.","color":"yellow","bold":false}]
tellraw @a[scores={Timer=32..33},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"Jungle mobs can drop potions and coins so, let's kill them!","color":"yellow","bold":false}]
tellraw @a[scores={Timer=34..35},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"You can change the map settings in the panel. Set your gamemode to creative then listen Gunivers.","color":"yellow","bold":false}]
tellraw @a[scores={Timer=36..37},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"Your coins gain is proportional to your ratio.","color":"yellow","bold":false}]
tellraw @a[scores={Timer=38..39},tag=TIP] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"All groups of kits have their own passive. Use it, it can make the difference.","color":"yellow","bold":false}]
tag @a remove TIP
