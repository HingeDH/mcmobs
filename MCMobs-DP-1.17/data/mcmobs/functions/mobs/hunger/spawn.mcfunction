summon zombie ~ ~ ~ {PersistenceRequired:0b,CanPickUpLoot:0b,CanBreakDoors:0b,IsBaby:1b,CustomName:'{"text":"Glutton","italic":false}',DeathLootTable:"mcmobs:entities/hunger",Tags:["mcmobs.hunger","mcmobs.found","mcmobs.entity"],Age:0}
effect give @e[type=zombie,tag=mcmobs.hunger] invisibility 999999 0 true
summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mcmobs.hunger","mcmobs.entity"],ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360014}}],Silent:1b}
kill @s[type=armor_stand,tag=mcmobs.spawn_egg]