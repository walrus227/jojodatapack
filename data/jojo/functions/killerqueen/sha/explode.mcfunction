gamerule mobGriefing false
execute at @s run summon fireball ~ ~ ~ {ExplosionPower:4b,power:[0.0,-1.0,0.0]}
schedule function jojo:killerqueen/sha/reset 5t
tag @a remove sha
execute at @s run kill @e[type=iron_golem,tag=sha,limit=1,sort=nearest]
kill @s