execute unless entity @e[type=armor_stand,tag=mcmobs.warden,distance=..2.5] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mcmobs.warden"],ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360023}}],Silent:1b}

execute if entity @s[nbt={HurtTime:9s}] run scoreboard players set @e[type=armor_stand,tag=mcmobs.warden,sort=nearest,limit=1] mcmobs.hurttime 10

execute if score @s mcmobs.wardbeat matches 1.. run scoreboard players remove @s mcmobs.wardbeat
execute if score @s mcmobs.wardbeat matches 0 unless entity @s[tag=mcmobs.pursue] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:2}]}

execute if entity @s[nbt={HurtTime:9s}] if entity @a[distance=..10] unless entity @s[tag=mcmobs.pursue] run function mcmobs:mobs/warden/scream
execute if entity @s[nbt={HurtTime:9s}] if entity @a[distance=..10] run tag @s add mcmobs.pursue
execute if entity @s[nbt={HurtTime:9s}] if entity @a[distance=..10] run playsound mcmobs:entity.warden.hurt hostile @a
execute if entity @s[nbt={HurtTime:9s}] if entity @a[distance=..10] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:30}]}

scoreboard players add @s mcmobs.heartb 2
execute if score @s mcmobs.wardbeat matches 1.. unless entity @s[tag=mcmobs.pursue] run scoreboard players add @s mcmobs.heartb 3
execute if entity @s[tag=mcmobs.pursue] run scoreboard players add @s mcmobs.heartb 5
execute if score @s mcmobs.wardbeat matches 1.. run scoreboard players remove @s mcmobs.wardbeat 1

execute if score @s mcmobs.heartb matches 60.. run playsound mcmobs:entity.warden.heartbeat hostile @a
execute if score @s mcmobs.heartb matches 60.. run scoreboard players reset @s mcmobs.heartb

data merge entity @s {DrownedConversionTime:300}

scoreboard players add @s mcmobs.wardamb 1
execute if score @s mcmobs.wardamb matches 200.. if predicate mcmobs:chance/0.5 run playsound mcmobs:entity.warden.whine hostile @a
execute if score @s mcmobs.wardamb matches 200.. run scoreboard players reset @s mcmobs.wardamb