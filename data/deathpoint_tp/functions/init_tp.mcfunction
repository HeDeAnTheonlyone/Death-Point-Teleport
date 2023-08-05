
execute store result score #internal deathpoint_tp.itemcount run data get entity @s Inventory[{Slot:-106b}].Count 0.9999

item modify entity @s weapon.offhand deathpoint_tp:remove_compass

data modify storage deathpoint_tp:location dim set from entity @s LastDeathLocation.dimension
data modify storage deathpoint_tp:location x set from entity @s LastDeathLocation.pos[0]
data modify storage deathpoint_tp:location y set from entity @s LastDeathLocation.pos[1]
data modify storage deathpoint_tp:location z set from entity @s LastDeathLocation.pos[2]

function deathpoint_tp:tp with storage deathpoint_tp:location
playsound minecraft:entity.enderman.teleport player @s ~ ~500 ~ 1000000

advancement revoke @s only deathpoint_tp:recovery_compass_use
