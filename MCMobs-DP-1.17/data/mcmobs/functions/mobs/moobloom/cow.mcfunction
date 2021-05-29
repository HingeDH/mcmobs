execute unless entity @e[type=armor_stand,tag=mcmobs.moobloom,distance=..2.5] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mcmobs.moobloom"],ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360001}}],Silent:1b}

execute if entity @s[nbt={HurtTime:9s}] run scoreboard players set @e[type=armor_stand,tag=mcmobs.moobloom,sort=nearest,limit=1] mcmobs.hurttime 10

execute store result score @s mcmobs.love run data get entity @s InLove
execute unless entity @s[nbt={InLove:0b}] run data merge entity @s {InLove:0b}
execute if score @s mcmobs.love matches 1.. run scoreboard players set @s mcmobs.lovetime 600
execute if score @s mcmobs.love matches 1.. run advancement grant @a[distance=..10] only minecraft:husbandry/moozoom
execute if score @s mcmobs.love matches 1.. run effect give @s speed 30 2
execute if score @s mcmobs.love matches 1.. run scoreboard players reset @s mcmobs.love
execute if score @s mcmobs.lovetime matches 1.. run scoreboard players remove @s mcmobs.lovetime 1
execute if score @s mcmobs.lovetime matches 1.. run particle happy_villager ~ ~ ~ 0.5 0.5 0.5 0.1 1 force
execute if score @s mcmobs.lovetime matches 1.. if block ~ ~ ~ #mcmobs:air if block ~ ~-1 ~ #mcmobs:moobloom_plantable run setblock ~ ~ ~ dandelion