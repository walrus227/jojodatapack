execute if score @s stand matches 0 run tellraw @s {"text":"The stand's power courses through you!","color":"green","bold":true,"italic":true}
execute if score @s stand matches 0 run scoreboard players set @s stand 1
execute if score @s stand matches 2.. run function jojo:incompatiblestand

execute unless entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{starplatinum:1b}}}] run say The World! Toki wo tomare!
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{starplatinum:1b}}}, scores={fungus=1..}] run say Star Platinum! The World!
scoreboard players set @s time 0
tag @s add jojo.theworld
# @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{theworld:1b}}}, scores={fungus=1..}]
playsound jojo:theworld_stop master @a

# Time Stop
execute as @e unless score @s fungus matches 1 run effect give @s slowness 5 255 true
execute as @e[type=creeper] run data modify entity @s Fuse set value 100s
execute as @e[type=tnt] run data modify entity @s Fuse set value 100s
execute as @e[type=!player] run data modify entity @s NoAI set value 1b
gamerule doDaylightCycle false
schedule function jojo:theworld/theworldresume 100t
schedule function jojo:theworld/theworldcd 240t