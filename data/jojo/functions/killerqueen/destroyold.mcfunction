scoreboard players operation kqcompare1 kqowner = @s kqowner
scoreboard players operation kqcompare1 kqowner -= kqcompare kqowner
execute if score kqcompare1 kqowner matches 0 run kill @s