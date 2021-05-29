execute unless entity @e[type=zombie,tag=mcmobs.hunger,distance=..0.05] run scoreboard players set @s mcmobs.walktime 5

tp @s @e[type=zombie,tag=mcmobs.hunger,sort=nearest,limit=1,distance=..1.5]
execute unless entity @e[type=zombie,tag=mcmobs.hunger,distance=..1.5] run kill @s

execute if score @s mcmobs.walktime matches 1.. run scoreboard players remove @s mcmobs.walktime 1
execute if score @s mcmobs.walktime matches 1.. unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360015}}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360015}}]}
execute unless score @s mcmobs.walktime matches 1.. unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360014}}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360014}}]}

execute if score @s mcmobs.hurttime matches 1.. run scoreboard players remove @s mcmobs.hurttime 1
execute if score @s mcmobs.hurttime matches 1.. if score @s mcmobs.walktime matches 1.. run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360017}}]}
execute if score @s mcmobs.hurttime matches 1.. unless score @s mcmobs.walktime matches 1.. run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360016}}]}