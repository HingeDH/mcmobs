particle block packed_ice ~ ~ ~ 0.5 0.5 0.5 0.1 25 force
effect give @a[sort=nearest,limit=1,gamemode=!spectator,gamemode=!creative] mining_fatigue 8 5
execute if predicate mcmobs:chance/0.5 run effect give @a[sort=nearest,limit=1,gamemode=!spectator,gamemode=!creative] slowness 15 2
effect give @a[sort=nearest,limit=1,gamemode=!spectator,gamemode=!creative] instant_damage 1 0
playsound minecraft:block.glass.break block @a
kill @s