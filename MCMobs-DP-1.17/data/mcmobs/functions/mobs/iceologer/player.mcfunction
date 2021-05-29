scoreboard players add @s mcmobs.icetime 1
particle cloud ~ ~6 ~ 0.1 0.1 0.1 0.1 10 force
execute if score @s mcmobs.icetime matches 30.. run function mcmobs:mobs/iceologer/spawn_ice_block

execute unless entity @e[tag=mcmobs.iceologer,distance=..20] run scoreboard players reset @s mcmobs.icetime
execute unless entity @e[tag=mcmobs.iceologer,distance=..20] run tag @s remove mcmobs.iceblock