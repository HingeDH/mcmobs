execute unless entity @e[type=vindicator,tag=mcmobs.iceologer,distance=..0.05] run scoreboard players set @s mcmobs.walktime 5

tp @s @e[type=vindicator,tag=mcmobs.iceologer,sort=nearest,limit=1,distance=..1.5]
execute unless entity @e[type=vindicator,tag=mcmobs.iceologer,distance=..1.5] run kill @s

execute if score @s mcmobs.walktime matches 1.. run scoreboard players remove @s mcmobs.walktime 1
execute if score @s mcmobs.walktime matches 1.. unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360006}}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360006}}]}
execute unless score @s mcmobs.walktime matches 1.. unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360005}}]}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360005}}]}

execute if score @s mcmobs.hurttime matches 1.. run scoreboard players remove @s mcmobs.hurttime 1
execute if score @s mcmobs.hurttime matches 1.. if score @s mcmobs.walktime matches 1.. run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360009}}]}
execute if score @s mcmobs.hurttime matches 1.. unless score @s mcmobs.walktime matches 1.. run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360008}}]}

execute if entity @a[distance=..16,tag=mcmobs.iceblock] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360007}}]}
execute if entity @a[distance=..16,tag=mcmobs.iceblock] if score @s mcmobs.hurttime matches 1.. run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:83600010}}]}