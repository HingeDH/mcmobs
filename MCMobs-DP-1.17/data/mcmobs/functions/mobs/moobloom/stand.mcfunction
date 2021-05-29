execute unless entity @e[type=cow,tag=mcmobs.moobloom,distance=..0.05] run scoreboard players set @s mcmobs.walktime 5

tp @s @e[type=cow,tag=mcmobs.moobloom,sort=nearest,limit=1,distance=..1.5]
execute unless entity @e[type=cow,tag=mcmobs.moobloom,distance=..1.5] run kill @s

execute if score @s mcmobs.walktime matches 1.. run scoreboard players remove @s mcmobs.walktime 1
execute if score @s mcmobs.walktime matches 1.. unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360002}}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360002}}]}
execute unless score @s mcmobs.walktime matches 1.. unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360001}}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360001}}]}

execute if score @s mcmobs.hurttime matches 1.. run scoreboard players remove @s mcmobs.hurttime 1
execute if score @s mcmobs.hurttime matches 1.. if score @s mcmobs.walktime matches 1.. run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360004}}]}
execute if score @s mcmobs.hurttime matches 1.. unless score @s mcmobs.walktime matches 1.. run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360003}}]}