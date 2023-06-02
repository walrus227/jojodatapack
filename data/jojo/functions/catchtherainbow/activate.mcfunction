execute if score @s stand matches 0 run tellraw @s {"text":"The stand's power courses through you!","color":"green","bold":true,"italic":true}
execute if score @s stand matches 0 run scoreboard players set @s stand 6
execute if score @s stand matches 1..5 run function jojo:incompatiblestand
execute if score @s stand matches 7.. run function jojo:incompatiblestand

say Catch The Rainbow!
tag @s add jojo.catchtherainbow