execute if score @s stand matches 0 run tellraw @s {"text":"The stand's power courses through you!","color":"green","bold":true,"italic":true}
execute if score @s stand matches 0 run scoreboard players set @s stand 5
execute if score @s stand matches 1..4 run function jojo:incompatiblestand
execute if score @s stand matches 6.. run function jojo:incompatiblestand

say Black Sabbath!