#Warden
execute if score @s mcmobs.walk matches 1.. unless score @s mcmobs.wdelay matches 1.. if entity @e[tag=mcmobs.warden,distance=..8,tag=!mcmobs.pursue] run function mcmobs:mobs/warden/player
execute if score @s mcmobs.sprint matches 1.. unless score @s mcmobs.wdelay matches 1.. if entity @e[tag=mcmobs.warden,distance=..8,tag=!mcmobs.pursue] run function mcmobs:mobs/warden/player
execute if score @s mcmobs.wdelay matches 1.. run scoreboard players remove @s mcmobs.wdelay 1
scoreboard players reset @s mcmobs.walk
scoreboard players reset @s mcmobs.sprint

#Iceologer
execute if entity @s[tag=mcmobs.iceblock] run particle cloud ~ ~5.25 ~ 0.25 0.25 0.25 0.1 4 force
execute unless entity @e[tag=mcmobs.iceologer,distance=..16] run tag @s remove mcmobs.iceblock