execute unless entity @e[type=armor_stand,tag=mcmobs.iceologer,distance=..2.5] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mcmobs.iceologer"],ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360005}}],Silent:1b}

execute if entity @s[nbt={HurtTime:9s}] run scoreboard players set @e[type=armor_stand,tag=mcmobs.iceologer,sort=nearest,limit=1] mcmobs.hurttime 10

execute if entity @a[distance=..16] run scoreboard players add @s mcmobs.icetime 1
execute if score @s mcmobs.icetime matches 200.. run tag @a[gamemode=!spectator,gamemode=!creative,distance=..16,sort=nearest,limit=1] add mcmobs.iceblock
execute if score @s mcmobs.icetime matches 200.. if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16,sort=nearest,limit=1] run playsound minecraft:entity.evoker.cast_spell hostile @a
execute if score @s mcmobs.icetime matches 200.. run scoreboard players set @s mcmobs.icetime 0

execute if entity @a[distance=..32,tag=mcmobs.iceblock] run effect give @s slowness 1 6 true