summon cow ~ ~ ~ {CustomName:'{"text":"Moobloom","italic":false}',DeathLootTable:"mcmobs:entities/moobloom",Tags:["mcmobs.moobloom","mcmobs.found","mcmobs.entity"],Age:0}
effect give @e[type=cow,tag=mcmobs.moobloom] invisibility 999999 0 true
summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mcmobs.moobloom","mcmobs.entity"],ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360001}}],Silent:1b}
tp @s[type=cow] ~ -512 ~
kill @s[type=armor_stand,tag=mcmobs.spawn_egg]