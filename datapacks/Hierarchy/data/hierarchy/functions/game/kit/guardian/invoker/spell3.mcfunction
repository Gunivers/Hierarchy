execute at @s[team=Blue] run summon skeleton_horse ~ ~ ~2 {Tame:1,Invulnerable:1,SaddleItem:{id:saddle,Count:1},Tags:["SpawnAnime","363G","363B"],Rotation:[0f,0f]}
execute at @s[team=Blue] run summon skeleton_horse ~ ~ ~-2 {Tame:1,Invulnerable:1,SaddleItem:{id:saddle,Count:1},Tags:["SpawnAnime","363G","363B"],Rotation:[180f,0f]}
execute at @s[team=Blue] run summon skeleton_horse ~2 ~ ~ {Tame:1,Invulnerable:1,SaddleItem:{id:saddle,Count:1},Tags:["SpawnAnime","363G","363B"],Rotation:[-90f,0f]}
execute at @s[team=Blue] run summon skeleton_horse ~-2 ~ ~ {Tame:1,Invulnerable:1,SaddleItem:{id:saddle,Count:1},Tags:["SpawnAnime","363G","363B"],Rotation:[90f,0f]}
execute at @s[team=Orange] run summon skeleton_horse ~ ~ ~2 {Tame:1,Invulnerable:1,SaddleItem:{id:saddle,Count:1},Tags:["SpawnAnime","363G","363R"],Rotation:[0f,0f]}
execute at @s[team=Orange] run summon skeleton_horse ~ ~ ~-2 {Tame:1,Invulnerable:1,SaddleItem:{id:saddle,Count:1},Tags:["SpawnAnime","363G","363R"],Rotation:[180f,0f]}
execute at @s[team=Orange] run summon skeleton_horse ~2 ~ ~ {Tame:1,Invulnerable:1,SaddleItem:{id:saddle,Count:1},Tags:["SpawnAnime","363G","363R"],Rotation:[-90f,0f]}
execute at @s[team=Orange] run summon skeleton_horse ~-2 ~ ~ {Tame:1,Invulnerable:1,SaddleItem:{id:saddle,Count:1},Tags:["SpawnAnime","363G","363R"],Rotation:[90f,0f]}

scoreboard players operation @e[tag=363G,distance=..3,limit=4,sort=nearest] ID = @s ID
