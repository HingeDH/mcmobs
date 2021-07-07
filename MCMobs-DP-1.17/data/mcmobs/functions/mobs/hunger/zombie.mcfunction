execute unless entity @e[type=armor_stand,tag=mcmobs.hunger,distance=..2.5] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mcmobs.hunger","mcmobs.entity"],ArmorItems:[{},{},{},{id:"minecraft:dandelion",Count:1b,tag:{CustomModelData:8360014}}],Silent:1b}

execute if entity @s[nbt={HurtTime:9s}] run scoreboard players set @e[type=armor_stand,tag=mcmobs.hunger,sort=nearest,limit=1] mcmobs.hurttime 10

data merge entity @s {DrownedConversionTime:300}

execute if entity @e[type=item,nbt={Item:{id:"minecraft:tnt"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_tnt
execute if entity @e[type=item,nbt={Item:{id:"minecraft:tnt_minecart"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_tnt
execute if entity @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_chorus
execute if entity @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_chorus
execute if entity @e[type=item,nbt={Item:{id:"minecraft:sugar"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_sugar
execute if entity @e[type=item,nbt={Item:{id:"minecraft:cake"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_sugar
execute if entity @e[type=item,nbt={Item:{id:"minecraft:cookie"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_sugar
execute if entity @e[type=item,nbt={Item:{id:"minecraft:ice"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_ice
execute if entity @e[type=item,nbt={Item:{id:"minecraft:packed_ice"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_ice
execute if entity @e[type=item,nbt={Item:{id:"minecraft:blue_ice"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_ice
execute if entity @e[type=item,nbt={Item:{id:"minecraft:torch"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_smoky
execute if entity @e[type=item,nbt={Item:{id:"minecraft:campfire"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_smoky
execute if entity @e[type=item,nbt={Item:{id:"minecraft:soul_torch"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_smoky
execute if entity @e[type=item,nbt={Item:{id:"minecraft:soul_campfire"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_smoky
execute if entity @e[type=item,nbt={Item:{id:"minecraft:lantern"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_smoky
execute if entity @e[type=item,nbt={Item:{id:"minecraft:soul_lantern"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_smoky
execute if entity @e[type=item,nbt={Item:{id:"minecraft:redstone_torch"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_smoky
execute if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_smoky
execute if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_smoky
execute if entity @e[type=item,nbt={Item:{id:"minecraft:flint_and_steel"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_smoky
execute if entity @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_smoky
execute if entity @e[type=item,nbt={Item:{id:"minecraft:lava_bucket"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_smoky
execute if entity @e[type=item,nbt={Item:{id:"minecraft:potion"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_bottle
execute if entity @e[type=item,nbt={Item:{id:"minecraft:splash_potion"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_bottle
execute if entity @e[type=item,nbt={Item:{id:"minecraft:lingering_potion"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_bottle
execute if entity @e[type=item,nbt={Item:{id:"minecraft:honey_bottle"}},distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat_bottle
execute if entity @e[type=item,distance=..2] unless score @s mcmobs.hungbite matches 1.. run function mcmobs:mobs/hunger/eat
execute if score @s mcmobs.hungbite matches 1.. run scoreboard players remove @s mcmobs.hungbite 1

execute if score @s mcmobs.tnttime matches 1.. run scoreboard players remove @s mcmobs.tnttime 1
execute if score @s mcmobs.tnttime matches 1.. run particle smoke ~ ~ ~ 0.1 0.1 0.1 0.1 1 force
execute if score @s mcmobs.tnttime matches 1 run summon tnt