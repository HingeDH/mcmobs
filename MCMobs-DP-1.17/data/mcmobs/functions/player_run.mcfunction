#Warden
execute if score @s mcmobs.walk matches 1.. unless score @s mcmobs.wdelay matches 1.. if entity @e[tag=mcmobs.warden,distance=..8,tag=!mcmobs.pursue] run function mcmobs:mobs/warden/player
execute if score @s mcmobs.sprint matches 1.. unless score @s mcmobs.wdelay matches 1.. if entity @e[tag=mcmobs.warden,distance=..8,tag=!mcmobs.pursue] run function mcmobs:mobs/warden/player
execute if score @s mcmobs.wdelay matches 1.. run scoreboard players remove @s mcmobs.wdelay 1
scoreboard players reset @s mcmobs.walk
scoreboard players reset @s mcmobs.sprint

#Axolotl
execute if entity @s[nbt={SelectedItem:{id:"minecraft:cod_bucket",Count:1b,tag:{display:{Name:'{"italic":false,"color":"gold","text":"Axolotl"}'}}}}] run replaceitem entity @s weapon.mainhand cod_bucket{ctc: {traits: {"item": 1b, "block": 1b, "bucket": 1b}, id: "axolotl_bucket", from: "hinge:mcmobs"},CustomModelData:8360001,display:{Name:'{"text":"Bucket of Axolotl","italic":false}'},EntityTag:{Tags:["mcmobs.axolotl_spawner"]}} 1

execute as @e[type=cod,tag=mcmobs.axolotl_spawner] at @s run function mcmobs:mobs/axolotl/spawn