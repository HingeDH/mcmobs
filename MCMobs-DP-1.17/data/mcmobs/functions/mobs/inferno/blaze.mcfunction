execute unless entity @e[type=armor_stand,tag=mcmobs.inferno,distance=..2.5] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mcmobs.inferno"],ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360019}}],Silent:1b}
execute unless entity @e[type=armor_stand,tag=mcmobs.infernoshield,distance=..2.5] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mcmobs.infernoshield"],ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360020}}],Silent:1b}

execute if entity @s[nbt={HurtTime:9s}] run scoreboard players set @e[type=armor_stand,tag=mcmobs.inferno,sort=nearest,limit=1] mcmobs.hurttime 10
execute if entity @s[nbt={HurtTime:9s}] run scoreboard players set @e[type=armor_stand,tag=mcmobs.infernoshield,sort=nearest,limit=1] mcmobs.hurttime 10

execute if entity @a[distance=..10,gamemode=!spectator,gamemode=!creative] run scoreboard players add @s mcmobs.firetime 1
execute if score @s mcmobs.firetime matches 250.. if entity @a[distance=..10] run particle lava ~ ~ ~ 0 0 0 0.1 1 normal
execute if score @s mcmobs.firetime matches 300.. run function mcmobs:mobs/inferno/burn