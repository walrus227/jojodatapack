say Killer Queen!
execute store result score kqcompare kqowner run data get entity @s UUID[0]
execute as @e[type=armor_stand,tag=!newkq,scores={kqowner=0..}] run function jojo:killerqueen/checkexplode