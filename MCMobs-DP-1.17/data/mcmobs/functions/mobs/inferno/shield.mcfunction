tp @s ~ ~ ~ ~5 ~
execute unless entity @e[type=blaze,tag=mcmobs.inferno,distance=..0.05] run scoreboard players set @s mcmobs.walktime 5

execute positioned as @e[type=blaze,tag=mcmobs.inferno,sort=nearest,limit=1,distance=..1.5] run tp @s ~ ~ ~
execute unless entity @e[type=blaze,tag=mcmobs.inferno,distance=..1.5] run kill @s

execute unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360020}}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360020}}]}

execute if score @s mcmobs.hurttime matches 1.. run scoreboard players remove @s mcmobs.hurttime 1
execute if score @s mcmobs.hurttime matches 1.. run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360022}}]}

data merge entity @s {Fire:300s}