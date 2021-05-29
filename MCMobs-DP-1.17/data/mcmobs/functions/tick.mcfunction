###Mobs

#Moobloom
execute as @e[type=cow,tag=mcmobs.moobloom] at @s run function mcmobs:mobs/moobloom/cow
execute as @e[type=armor_stand,tag=mcmobs.moobloom] at @s run function mcmobs:mobs/moobloom/stand
execute as @e[type=cow,tag=!mcmobs.found,tag=!global.ignore] at @s if predicate mcmobs:biome/flowers run function mcmobs:mobs/moobloom/spawning
tag @e[type=cow] add mcmobs.found

#Iceologer
execute as @e[type=vindicator,tag=mcmobs.iceologer] at @s run function mcmobs:mobs/iceologer/pillager
execute as @e[type=armor_stand,tag=mcmobs.iceologer] at @s run function mcmobs:mobs/iceologer/stand
execute as @a[tag=mcmobs.iceblock] at @s run function mcmobs:mobs/iceologer/player
execute as @e[tag=mcmobs.icecube] at @s run function mcmobs:mobs/iceologer/ice_block
execute as @e[type=zombie,tag=!mcmobs.found,tag=!global.ignore] at @s if predicate mcmobs:biome/snowy_mountains run function mcmobs:mobs/iceologer/spawning
tag @e[type=zombie] add mcmobs.found

#Glutton
execute as @e[type=zombie,tag=mcmobs.hunger] at @s run function mcmobs:mobs/hunger/zombie
execute as @e[type=armor_stand,tag=mcmobs.hunger] at @s run function mcmobs:mobs/hunger/stand
execute as @e[type=creeper,tag=!mcmobs.found,tag=!global.ignore] at @s run function mcmobs:mobs/hunger/spawning
#Looking for `tag @e[type=creeper] add mcmobs.found`? Scroll down to Warden, as both use creepers for spawning.

#Inferno
execute as @e[type=blaze,tag=mcmobs.inferno] at @s run function mcmobs:mobs/inferno/blaze
execute as @e[type=armor_stand,tag=mcmobs.inferno] at @s run function mcmobs:mobs/inferno/stand
execute as @e[type=armor_stand,tag=mcmobs.infernoshield] at @s run function mcmobs:mobs/inferno/shield
execute as @e[type=blaze,tag=!mcmobs.found,tag=!global.ignore] at @s run function mcmobs:mobs/inferno/spawning
tag @e[type=blaze] add mcmobs.found

#Warden
execute as @e[type=zombie,tag=mcmobs.warden] at @s run function mcmobs:mobs/warden/zombie
execute as @e[type=armor_stand,tag=mcmobs.warden] at @s run function mcmobs:mobs/warden/stand
execute as @e[type=creeper,tag=!mcmobs.found,tag=!global.ignore] at @s run function mcmobs:mobs/warden/spawning
tag @e[type=creeper] add mcmobs.found

#Spawn Eggs
execute as @e[type=armor_stand,tag=mcmobs.spawn_moobloom] at @s run function mcmobs:mobs/moobloom/spawn
kill @e[type=armor_stand,tag=mcmobs.spawn_moobloom]
execute as @e[type=armor_stand,tag=mcmobs.spawn_iceologer] at @s run function mcmobs:mobs/iceologer/spawn
kill @e[type=armor_stand,tag=mcmobs.spawn_iceologer]
execute as @e[type=armor_stand,tag=mcmobs.spawn_inferno] at @s run function mcmobs:mobs/inferno/spawn
kill @e[type=armor_stand,tag=mcmobs.spawn_inferno]
execute as @e[type=armor_stand,tag=mcmobs.spawn_glutton] at @s run function mcmobs:mobs/hunger/spawn
kill @e[type=armor_stand,tag=mcmobs.spawn_glutton]
execute as @e[type=armor_stand,tag=mcmobs.spawn_warden] at @s run function mcmobs:mobs/warden/spawn
kill @e[type=armor_stand,tag=mcmobs.spawn_warden]

#Special
execute as @a at @s run function mcmobs:player_run
execute as @e[type=armor_stand,tag=mcmobs.detect] at @s run function mcmobs:mobs/warden/detect
tag @e[type=guardian,tag=!global.ignore] add mcmobs.guardian
tag @e[type=elder_guardian,tag=!global.ignore] add mcmobs.guardian