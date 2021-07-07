###Mobs
execute as @e[tag=mcmobs.entity] at @s run function mcmobs:mobs/mob_tick

###Players
execute as @a at @s run function mcmobs:player_run


###Spawn Eggs
execute as @e[type=armor_stand,tag=mcmobs.spawn_moobloom] at @s run function mcmobs:mobs/moobloom/spawn
execute as @e[type=armor_stand,tag=mcmobs.spawn_iceologer] at @s run function mcmobs:mobs/iceologer/spawn
execute as @e[type=armor_stand,tag=mcmobs.spawn_inferno] at @s run function mcmobs:mobs/inferno/spawn
execute as @e[type=armor_stand,tag=mcmobs.spawn_glutton] at @s run function mcmobs:mobs/hunger/spawn
execute as @e[type=armor_stand,tag=mcmobs.spawn_warden] at @s run function mcmobs:mobs/warden/spawn 