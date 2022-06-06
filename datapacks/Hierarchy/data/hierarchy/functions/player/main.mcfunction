tellraw @a[tag=Debug] ["",{"text":". Player/Main | As: "},{"selector":"@s"}]

function hierarchy:player/action/main
function hierarchy:player/state/main
execute if entity @a[tag=IsPlaying] run function hierarchy:player/data/main
execute if entity @a[tag=IsPlaying] run function hierarchy:player/effect/main
