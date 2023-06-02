execute if predicate jojo:is_dark run effect give @s strength 1 1 true
execute if predicate jojo:is_dark run effect give @s speed 1 1 true
execute if predicate jojo:is_dark run effect clear @s wither
execute unless predicate jojo:is_dark run effect clear @s strength
execute unless predicate jojo:is_dark run effect clear @s speed
execute unless predicate jojo:is_dark run effect give @s wither 1 1 true

execute if score @s pearl matches 0 run give @s ender_pearl{blacksabbath:1b}