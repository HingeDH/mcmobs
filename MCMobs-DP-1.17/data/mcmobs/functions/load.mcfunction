tellraw @a [{"text":"[Minecon Mobs] ","color":"gold","bold":"true"},{"text":"v1.17.1-7.7.21 loaded.","color":"yellow","bold":"false"}]
tellraw @a [{"text":"Are you sure you're playing on the right version? This datapack is intended for ","color":"red","italic":"true"},{"text":"1.17+","color":"dark_red"}]

##Scoreboards
scoreboard objectives add mcmobs.walktime dummy
scoreboard objectives add mcmobs.hurttime dummy
scoreboard objectives add mcmobs.love dummy
scoreboard objectives add mcmobs.lovetime dummy
scoreboard objectives add mcmobs.icetime dummy
scoreboard objectives add mcmobs.icebreak dummy
scoreboard objectives add mcmobs.hungbite dummy
scoreboard objectives add mcmobs.tnttime dummy
scoreboard objectives add mcmobs.firetime dummy
scoreboard objectives add mcmobs.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add mcmobs.sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add mcmobs.wdelay dummy
scoreboard objectives add mcmobs.wardbeat dummy
scoreboard objectives add mcmobs.heartb dummy
scoreboard objectives add mcmobs.wardamb dummy
scoreboard objectives add mcmobs.stare dummy
scoreboard objectives add mcmobs.unin dummy
scoreboard objectives add mcmobs.loaded dummy
scoreboard objectives add mcmobs.age dummy
scoreboard objectives add mcmobs.tcc dummy

##TCC Compat
scoreboard players reset #mcmobs mcmobs.tcc
execute if score tcc.version tcc.dummy matches 50.. run scoreboard players set #mcmobs mcmobs.tcc 1