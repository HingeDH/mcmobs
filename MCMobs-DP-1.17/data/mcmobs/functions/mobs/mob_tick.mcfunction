###Mobs
#Moobloom
execute if entity @s[type=cow,tag=mcmobs.moobloom] at @s run function mcmobs:mobs/moobloom/cow
execute if entity @s[type=armor_stand,tag=mcmobs.moobloom] at @s run function mcmobs:mobs/moobloom/stand

#Iceologer
execute if entity @s[type=vindicator,tag=mcmobs.iceologer] at @s run function mcmobs:mobs/iceologer/pillager
execute if entity @s[type=armor_stand,tag=mcmobs.iceologer] at @s run function mcmobs:mobs/iceologer/stand
execute if entity @s[tag=mcmobs.iceblock] at @s run function mcmobs:mobs/iceologer/player
execute if entity @s[tag=mcmobs.icecube] at @s run function mcmobs:mobs/iceologer/ice_block
execute as @e[type=zombie,tag=!mcmobs.found,tag=!global.ignore] at @s if predicate mcmobs:biome/snowy_mountains run function

#Glutton
execute if entity @s[type=zombie,tag=mcmobs.hunger] at @s run function mcmobs:mobs/hunger/zombie
execute if entity @s[type=armor_stand,tag=mcmobs.hunger] at @s run function mcmobs:mobs/hunger/stand

#Inferno
execute if entity @s[type=blaze,tag=mcmobs.inferno] at @s run function mcmobs:mobs/inferno/blaze
execute if entity @s[type=armor_stand,tag=mcmobs.inferno] at @s run function mcmobs:mobs/inferno/stand
execute if entity @s[type=armor_stand,tag=mcmobs.infernoshield] at @s run function mcmobs:mobs/inferno/shield

#Warden
execute if entity @s[type=zombie,tag=mcmobs.warden] at @s run function mcmobs:mobs/warden/zombie
execute if entity @s[type=armor_stand,tag=mcmobs.warden] at @s run function mcmobs:mobs/warden/stand
execute if entity @s[type=armor_stand,tag=mcmobs.detect] at @s run function mcmobs:mobs/warden/detect
