execute unless entity @e[type=zombie,tag=mcmobs.warden,distance=..0.05] run scoreboard players set @s mcmobs.walktime 5

tp @s @e[type=zombie,tag=mcmobs.warden,sort=nearest,limit=1,distance=..1.5]
execute unless entity @e[type=zombie,tag=mcmobs.warden,distance=..1.5] run kill @s

execute if score @s mcmobs.walktime matches 1.. run scoreboard players remove @s mcmobs.walktime 1
execute if score @s mcmobs.walktime matches 1.. unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360024}}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360024}}]}
execute unless score @s mcmobs.walktime matches 1.. unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360023}}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360023}}]}

execute if score @s mcmobs.hurttime matches 1.. run scoreboard players remove @s mcmobs.hurttime 1
execute if score @s mcmobs.hurttime matches 1.. if score @s mcmobs.walktime matches 1.. run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360027}}]}
execute if score @s mcmobs.hurttime matches 1.. unless score @s mcmobs.walktime matches 1.. run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360026}}]}

execute if score @s mcmobs.stare matches 1.. run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360025}}]}
execute if score @s mcmobs.stare matches 1.. run tp @s ~ ~ ~ facing entity @p
execute if score @s mcmobs.stare matches 1.. run scoreboard players remove @s mcmobs.stare 1