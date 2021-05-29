particle lava ~ ~ ~ 1 1 1 0.1 10 normal
playsound minecraft:block.fire.extinguish hostile @a
fill ~-1 ~-3 ~-1 ~1 ~1 ~1 fire replace cave_air
fill ~-1 ~-3 ~-1 ~1 ~1 ~1 fire replace air
fill ~-1 ~-3 ~-1 ~1 ~1 ~1 fire replace void_air
scoreboard players set @s mcmobs.firetime 0