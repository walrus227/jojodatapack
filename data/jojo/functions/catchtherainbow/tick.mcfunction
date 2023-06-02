execute at @s unless block ~ ~-1 ~ barrier run fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air replace barrier
execute at @s if block ~ ~-1 ~ air if predicate jojo:is_raining run setblock ~ ~-1 ~ barrier
execute if predicate jojo:is_raining run effect give @s resistance 1 255 true