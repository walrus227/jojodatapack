execute if score @s stand matches 0 run tellraw @s {"text":"The stand's power courses through you!","color":"green","bold":true,"italic":true}
execute if score @s stand matches 0 run scoreboard players set @s stand 8
execute if score @s stand matches 1..7 run function jojo:incompatiblestand
execute if score @s stand matches 9.. run function jojo:incompatiblestand

say Cinderella!
tag @s[nbt={Inventory:[{Slot:-106b,tag:{cinderella:1b}}]}] add jojo.cinderella