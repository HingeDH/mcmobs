summon vindicator ~ ~ ~ {PersistenceRequired:0b,CustomName:'{"text":"Iceologer","italic":false}',DeathLootTable:"mcmobs:entities/iceologer",Tags:["mcmobs.iceologer","mcmobs.found","mcmobs.entity"],Age:0}
effect give @e[type=vindicator,tag=mcmobs.iceologer] invisibility 999999 0 true
summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mcmobs.iceologer","mcmobs.entity"],ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360005}}],Silent:1b}
kill @s[type=armor_stand,tag=mcmobs.spawn_egg]