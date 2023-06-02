execute if score @s stand matches 0 run tellraw @s {"text":"The stand's power courses through you!","color":"green","bold":true,"italic":true}
execute if score @s stand matches 0 run scoreboard players set @s stand 9
execute if score @s stand matches 1..8 run function jojo:incompatiblestand
execute if score @s stand matches 10.. run function jojo:incompatiblestand

execute store result score kqcompare kqowner run data get entity @s UUID[0]
execute as @e[type=armor_stand,tag=!newkq,scores={kqowner=0..}] run function jojo:killerqueen/destroyold

tellraw @s {"text":"Killer Queen touches the block...","color":"gray","bold":true,"italic":true}
execute store result score @e[type=armor_stand,tag=newkq,limit=1,sort=nearest] kqowner run data get entity @s UUID[0]

tag @e[type=armor_stand,tag=newkq,scores={kqowner=0..}] remove newkq