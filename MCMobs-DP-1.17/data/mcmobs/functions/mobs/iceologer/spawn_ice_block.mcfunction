tag @s remove mcmobs.iceblock
scoreboard players reset @s mcmobs.icetime
summon armor_stand ~ ~5.25 ~ {Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360011}}],Tags:["mcmobs.icecube","mcmobs.entity"]}
playsound minecraft:block.respawn_anchor.deplete block @a ~ ~ ~ 1 2