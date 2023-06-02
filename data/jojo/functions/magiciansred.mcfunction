execute if score @s stand matches 0 run tellraw @s {"text":"The stand's power courses through you!","color":"green","bold":true,"italic":true}
execute if score @s stand matches 0 run scoreboard players set @s stand 4
execute if score @s stand matches 1..3 run function jojo:incompatiblestand
execute if score @s stand matches 5.. run function jojo:incompatiblestand


say Magician's Red!
execute at @s run summon fireball ~ ~1 ~