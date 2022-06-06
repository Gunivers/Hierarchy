#Hall of creators
tellraw @a[scores={Action=..-1}] {"text":""}

tellraw @a[scores={Action=-1}] {"text":"Error 404: Message not found"}
tellraw @a[scores={Action=-2}] {"text":"<Mr_Phoenix> Salut c'est Mr_Phoenix, un des builders de cette Map. Si elle t'as plus c'est cool, merci d'y avoir jou\u00e9 (And I have 0 in english)."}
tellraw @a[scores={Action=-3}] {"text":"No message for him, he didn't deserve it"}
tellraw @a[scores={Action=-4}] {"text":"<TitiRomain> I am a builder lost in a class book"}
tellraw @a[scores={Action=-5}] {"text":"<HexionMC> Thanks to Mobiduck, .... and others but we don't remember their names :/"}
tellraw @a[scores={Action=-6}] {"text":"<MisterB2B> I am a builder but also a pretty good web developper, here is a way to contact me: \n","extra":[{"text":"Website","color":"aqua","clickEvent":{"action":"open_url","value":"http://misterb2bdev.alwaysdata.net/show/"}}]}
tellraw @a[scores={Action=-7}] {"text":"<Mayon_eZ> My snapchat: raphduguetto only nude plz \n","extra":[{"text":"Steam","color":"dark_blue","clickEvent":{"action":"open_url","value":"http://steamcommunity.com/profiles/76561198170154539/"}}]}
tellraw @a[scores={Action=-8}] {"text":"<Parad0x> Salut, \u00e7a va ? \n","extra":[{"text":"Youtube   ","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCgpW__LGxSauVq0Moi6t--w?view_as=subscriber"}},{"text":"Twitter","color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/Paradox_T4M"}}]}
tellraw @a[scores={Action=-9}] {"text":"<locolven> Dieu tout puissant du build. Bien que incompris, mon talent sera reconnu apr\u00e8s ma mort comme les plus grands"}
tellraw @a[scores={Action=-10}] {"text":"<LeiRoF> Hey ! Moi c\u2019est LeiRoF (Vincent de mon vrai nom), j\u2019ai 20 ans (enfin je crois, \u00e7a change tous les ans c'est compliqu\u00e9), je suis en fac de science, j\u2019ai cr\u00e9\u00e9 Gunivers et je d\u00e9veloppe tout ce qui me passe par la t\u00eate dans mes heures perdues. J'aime parler de tout et de rien, surtout de rien mais avant tout de partout. Derien. Bref, j\u2019aime bien la quiche. Des questions ?\n\nOh fuck, I have to translate...\nHi, I'm LeiRoF. Any questions? \n","extra":[{"text":"Youtube   ","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCimA2SBz78Mj-TQ2n4TmEVw?view_as=subscriber"}},{"text":"Twitter","color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/MrLeiRoF"}}]}
tellraw @a[scores={Action=-11}] {"text":"<KubbyDev> Hi, I am a command block developper (better than LeiRoF). I have done some one command creations some centuries ago, but now I mostly develop maps with Gunivers. \n","extra":[{"text":"Youtube","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCs3WDZJPeBj1Ah1njHCJLGw?view_as=subscriber"}}]}
tellraw @a[scores={Action=-12}] {"text":"<theogiraudet>","extra":[{"text":" SSSSLLLLIIIIMMMMMEEE","color":"green"}]}
tellraw @a[scores={Action=-13}] {"text":"<Faesha'> Hi, it's Faesharaa! I am a 3D Modeler and manufacturer of kazoo and paumade. Go have a look at my creations in my sketchfab my darlings. <3\nIf you like the Chartreuse, contact me by twitter, I have a big stock. \n","extra":[{"text":"Sketchfab   ","color":"aqua","clickEvent":{"action":"open_url","value":"https://sketchfab.com/Faesharaa"}},{"text":"Twitter   ","color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/MartialBrds"}},{"text":"Youtube","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCv8YEawDZZRaZzd4OvKPGqQ"}}]}
tellraw @a[scores={Action=-14}] {"text":"No message for him, he didn't deserve it"}
tellraw @a[scores={Action=-15}] {"text":"No message for him, he didn't deserve it"}
tellraw @a[scores={Action=-16}] {"text":"<A~Z> ","extra":[{"text":"\u00a71\u00a7ki \u00a72 Ha! I will send no message! Just dev! \u00a7oGnehehehehehe \u00a71\u00a7ki","color":"dark_green"}]}
tellraw @a[scores={Action=-17}] {"text":"<Evan> I'm a misunderstood genius. \n","extra":[{"text":"Discord (french)   ","color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://discord.gg/HamW7fN"}},{"text":"Twitter","color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/evan91380"}}]}
tellraw @a[scores={Action=-18}] {"text":"<DYSYX> I am the cleaner/tester of the team. I am always trying to clean the floor and I usually do the annoying chores. We couldn't end the map without me"}
tellraw @a[scores={Action=-19}] {"text":"<ThePyrocrafteur> Forgiveness is a sign of weakness \n","extra":[{"text":"Youtube","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCIBDr2bZ6-07h2YVl0Pz0Uw"}}]}
tellraw @a[scores={Action=-20}] {"text":"<Greninja_San> They don't admit it, but I did the most important thing in the map: I insisted to have my head in the credit room! You don't know how lucky you are!"}
tellraw @a[scores={Action=-21}] {"text":"<jbponce49> Yop \n","extra":[{"text":"Twitter","color":"aqua","clickEvent":{"action":"open_url","value":"http://twitter.com/jbponce49"}}]}

tellraw @a[scores={Action=..-1}] {"text":""}
execute as @a[scores={Action=..-1}] at @s run playsound block.stone_button.click_off record @p ~ ~ ~ 2 1 1
scoreboard players set @a[scores={Action=..-1}] Action 0

#Commande du panneau
#give @p sign 1 0 {BlockEntityTag:{Text4:"{\"color\":\"white\",\"text\":\"*----*---*----*\"}",Text3:"{\"underlined\":true,\"color\":\"gray\",\"text\":\"Tester\"}",Text2:"{\"bold\":true,\"color\":\"white\",\"text\":\"Pyrocrafteur\"}",Text1:"{\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger Action set -19\"},\"text\":\"*----*---*----*\"}"}}
