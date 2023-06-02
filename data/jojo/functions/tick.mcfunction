# (Star Platinum) The World
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{theworld:1b}}}, tag=!jojo.theworld] if score @s fungus matches 1.. run function jojo:theworld/theworld
execute as @a if score @s time matches 100 run say Time starts once more.

# Magician's Red
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{magiciansred:1b}}}] at @s if score @s fungus matches 1.. run function jojo:magiciansred
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{magiciansred:1b}}]}] at @s if score @s fungus matches 1.. run function jojo:magiciansred
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{magiciansred:1b}}]}] at @s if score @s stand matches 4 run effect give @s fire_resistance 1 1 true

# Hermit Purple
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{hermitpurple:1b}}}] at @s if score @s fungus matches 1.. run function jojo:hermitpurple
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{hermitpurple:1b}}]}] at @s if score @s fungus matches 1.. run function jojo:hermitpurple

# Aerosmith
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{aerosmith:1b}}}, tag=!jojo.ridingaero] if score @s fungus matches 1.. run function jojo:aerosmith/aerosmith
execute as @a[tag=jojo.ridingaero] at @s unless predicate jojo:riding_bat run function jojo:aerosmith/aerosmithkill

# Black Sabbath
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{blacksabbath:1b}}}] if score @s fungus matches 1.. run function jojo:blacksabbath/activate
execute as @a if score @s stand matches 5 store success score @s pearl run clear @s ender_pearl 0
execute as @a if score @s stand matches 5 run function jojo:blacksabbath/tick
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_pearl",tag:{blacksabbath:1b}}}]

# Catch The Rainbow
execute as @a[nbt={Inventory:[{Slot:103b, tag:{catchtherainbow:1b}}]},tag=!jojo.catchtherainbow] run function jojo:catchtherainbow/activate
execute at @a[nbt=!{Inventory:[{Slot:103b, tag:{catchtherainbow:1b}}]},tag=jojo.catchtherainbow] run fill ~ ~-1 ~ ~ ~-1 ~ air replace barrier
execute as @a[nbt=!{Inventory:[{Slot:103b, tag:{catchtherainbow:1b}}]},tag=jojo.catchtherainbow] run effect clear @s resistance
execute as @a[nbt=!{Inventory:[{Slot:103b, tag:{catchtherainbow:1b}}]}] run tag @s remove jojo.catchtherainbow
execute as @a[tag=jojo.catchtherainbow] run function jojo:catchtherainbow/tick

# Cinderella
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{cinderella:1b}}]},tag=!jojo.cinderella] at @s run function jojo:cinderella/activate
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{cinderella:1b}}]},tag=jojo.cinderella] at @s run execute as @e[distance=..40,type=zombie,nbt={Attributes:[{Name:"minecraft:generic.follow_range",Base:0d}]}] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range", Base:35d}]}
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{cinderella:1b}}]},tag=jojo.cinderella] at @s run execute as @e[distance=..20,type=skeleton,nbt={Attributes:[{Name:"minecraft:generic.follow_range",Base:0d}]}] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range", Base:16d}]}
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{cinderella:1b}}]},tag=jojo.cinderella] at @s run execute as @e[distance=..20,type=creeper,nbt={Attributes:[{Name:"minecraft:generic.follow_range",Base:0d}]}] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range", Base:16d}]}
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{cinderella:1b}}]},tag=jojo.cinderella] at @s run execute as @e[distance=..20,type=wither_skeleton,nbt={Attributes:[{Name:"minecraft:generic.follow_range",Base:0d}]}] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range", Base:16d}]}
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{cinderella:1b}}]},tag=jojo.cinderella] run tag @s remove jojo.cinderella
execute as @a[tag=jojo.cinderella] at @s run function jojo:cinderella/tick

# Sheer Heart Attack
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{sheerheartattack:1b}}}, tag=!sha] if score @s fungus matches 1.. run function jojo:killerqueen/sha/activate
function jojo:killerqueen/sha/tick

# Killer Queen
execute as @a[nbt={SelectedItem:{id:"minecraft:armor_stand", tag:{killerqueen:1b}}}] if score @s armorstand matches 1.. run function jojo:killerqueen/activate
execute as @a if score @s stand matches 9 run function jojo:killerqueen/tick

# Stand Arrow
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{standarrow:1b}}}] if score @s fungus matches 1.. run function jojo:standarrow/activate

# Reset Stand Trigger
execute as @a if score @s resetstand matches 1 run scoreboard players set @s milk 1

# Clear Stand
execute as @a if score @s milk matches 1 if score @s stand matches 1.. run tellraw @s {"text":"You feel your stand's power dissipate...","color":"gray","bold":true,"italic":true}
execute as @a if score @s milk matches 1 if score @s stand matches 5 run scoreboard players reset @s pearl
execute as @a if score @s milk matches 1 if score @s stand matches 5 run clear @s ender_pearl{blacksabbath:1b}
execute as @a if score @s milk matches 1 if score @s stand matches 1.. run scoreboard players set @s stand 0

# Reset
execute as @a unless score @s stand matches 0.. run scoreboard players set @s stand 0
scoreboard players set @a fungus 0
scoreboard players set @a milk 0
scoreboard players set @a resetstand 0
scoreboard players set @a armorstand 0
scoreboard players enable @a[gamemode=creative] resetstand