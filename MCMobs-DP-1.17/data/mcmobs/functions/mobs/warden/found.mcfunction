playsound mcmobs:entity.warden.vibe hostile @a
particle warped_spore ~ ~ ~ 0 0 0 0.1 25 normal
kill @s
execute as @e[tag=mcmobs.warden,sort=nearest,limit=1] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:30}]}
execute as @e[tag=mcmobs.warden,sort=nearest,limit=1] run scoreboard players set @s mcmobs.wardbeat 100