tp @s ~ ~-0.75 ~
scoreboard players add @s mcmobs.icebreak 1
execute if score @s mcmobs.icebreak matches 10.. run function mcmobs:mobs/iceologer/destroy_ice
execute if entity @a[distance=..1] run function mcmobs:mobs/iceologer/break_ice