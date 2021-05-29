playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1 0.75
particle block coarse_dirt ~ ~ ~ 0.1 0.1 0.1 0.1 10 force
scoreboard players set @s mcmobs.hungbite 20
kill @e[type=item,sort=nearest,limit=1]