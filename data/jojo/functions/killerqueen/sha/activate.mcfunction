execute if score @s stand matches 0 run tellraw @s {"text":"The stand's power courses through you!","color":"green","bold":true,"italic":true}
execute if score @s stand matches 0 run scoreboard players set @s stand 9
execute if score @s stand matches 1..8 run function jojo:incompatiblestand
execute if score @s stand matches 10.. run function jojo:incompatiblestand

say Killer Queen! Sheer Heart Attack!
tag @s add sha
execute at @s summon armor_stand run function jojo:killerqueen/sha/summonas
execute at @s summon iron_golem run function jojo:killerqueen/sha/summonig