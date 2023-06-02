execute if score @s stand matches 0 run tellraw @s {"text":"The stand's power courses through you!","color":"green","bold":true,"italic":true}
execute if score @s stand matches 0 run scoreboard players set @s stand 3
execute if score @s stand matches 1..2 run function jojo:incompatiblestand
execute if score @s stand matches 4.. run function jojo:incompatiblestand

say Hermit Purple!
execute at @s run effect give @e[distance=..20,type=!player] glowing 5 1 true
tp @e[distance=..20,type=item] @s