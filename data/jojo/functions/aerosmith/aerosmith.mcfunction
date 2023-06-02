execute if score @s stand matches 0 run tellraw @s {"text":"The stand's power courses through you!","color":"green","bold":true,"italic":true}
execute if score @s stand matches 0 run scoreboard players set @s stand 2
execute if score @s stand matches 1 run function jojo:incompatiblestand
execute if score @s stand matches 3.. run function jojo:incompatiblestand

say Aerosmith!
tag @s add jojo.ridingaero
execute at @s summon bat run function jojo:aerosmith/aerosmithsummon