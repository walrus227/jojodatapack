execute as @e[type=zombie,distance=..16] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1b}]}
execute as @e[type=skeleton,distance=..16] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}]}
execute as @e[type=wither_skeleton,distance=..16] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}]}
execute as @e[type=creeper,distance=..16] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:creeper_head",Count:1b}]}

# Zombie
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:zombie_head"}]}] run execute as @e[type=zombie,distance=..35] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range",Base:0d}]}
execute if entity @s[nbt=!{Inventory:[{Slot:103b,id:"minecraft:zombie_head"}]}] run execute as @e[type=zombie,distance=..40] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range",Base:35d}]}
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:zombie_head"}]}] run execute as @e[distance=35..40,type=zombie,nbt={Attributes:[{Name:"minecraft:generic.follow_range",Base:0d}]}] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range", Base:35d}]}

# Skeleton
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:skeleton_skull"}]}] run execute as @e[type=skeleton,distance=..16] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range",Base:0d}]}
execute if entity @s[nbt=!{Inventory:[{Slot:103b,id:"minecraft:skeleton_skull"}]}] run execute as @e[type=skeleton,distance=..20] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range",Base:16d}]}
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:skeleton_skull"}]}] run execute as @e[distance=16..20,type=skeleton,nbt={Attributes:[{Name:"minecraft:generic.follow_range",Base:0d}]}] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range", Base:16d}]}

# Wither Skeleton
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:wither_skeleton_skull"}]}] run execute as @e[type=wither_skeleton,distance=..16] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range",Base:0d}]}
execute if entity @s[nbt=!{Inventory:[{Slot:103b,id:"minecraft:wither_skeleton_skull"}]}] run execute as @e[type=wither_skeleton,distance=..20] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range",Base:16d}]}
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:wither_skeleton_skull"}]}] run execute as @e[distance=16..20,type=wither_skeleton,nbt={Attributes:[{Name:"minecraft:generic.follow_range",Base:0d}]}] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range", Base:16d}]}

# Creeper
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head"}]}] run execute as @e[type=creeper,distance=..16] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range",Base:0d}]}
execute if entity @s[nbt=!{Inventory:[{Slot:103b,id:"minecraft:creeper_head"}]}] run execute as @e[type=creeper,distance=..20] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range",Base:16d}]}
execute if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head"}]}] run execute as @e[distance=16..20,type=creeper,nbt={Attributes:[{Name:"minecraft:generic.follow_range",Base:0d}]}] run data merge entity @s {Attributes:[{Name:"minecraft:generic.follow_range", Base:16d}]}