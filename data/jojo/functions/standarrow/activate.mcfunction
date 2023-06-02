clear @s warped_fungus_on_a_stick{standarrow:1b} 1
clear @s ender_pearl{blacksabbath:1b}
tellraw @s {"text":"The arrow crumbles...","color":"gray","bold":true,"italic":true}

# check if current stand can be evolved
scoreboard players set @s evolution 0
execute if score @s stand matches 9 run function jojo:killerqueen/evolve

# if no evolvable stand, give new stand
execute if score @s evolution matches 0 run function jojo:standarrow/givestand