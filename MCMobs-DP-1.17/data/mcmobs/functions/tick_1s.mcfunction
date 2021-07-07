schedule clear mcmobs:tick_1s
schedule function mcmobs:tick_1s 1s

### Mob Spawning
execute as @e[type=cow,tag=!mcmobs.found,tag=!global.ignore] at @s if predicate mcmobs:biome/flowers run function mcmobs:mobs/moobloom/spawning
tag @e[type=cow] add mcmobs.found

execute as @e[type=zombie,tag=!mcmobs.found,tag=!global.ignore] at @s if predicate mcmobs:biome/snowy_mountains run function mcmobs:mobs/iceologer/spawning
tag @e[type=zombie] add mcmobs.found

execute as @e[type=blaze,tag=!mcmobs.found,tag=!global.ignore] at @s run function mcmobs:mobs/inferno/spawning
tag @e[type=blaze] add mcmobs.found

execute as @e[type=creeper,tag=!mcmobs.found,tag=!global.ignore] at @s run function mcmobs:mobs/hunger/spawning

execute as @e[type=creeper,tag=!mcmobs.found,tag=!global.ignore] at @s run function mcmobs:mobs/warden/spawning
tag @e[type=creeper] add mcmobs.found