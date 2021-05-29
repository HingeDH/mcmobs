execute facing entity @e[type=zombie,tag=mcmobs.warden,sort=nearest,limit=1] eyes run tp @s ^ ^ ^0.5 ~ ~
execute unless entity @e[type=zombie,tag=mcmobs.warden,distance=..20] run kill @s
execute if block ~ ~ ~ #wool run kill @s
execute if entity @e[type=zombie,tag=mcmobs.warden,distance=..2] run function mcmobs:mobs/warden/found