scoreboard players add RNGseed RNG_Variable 1
execute store result score RNG RNG_Variable run time query gametime
scoreboard players operation RNG RNG_Variable *= RNGseed RNG_Variable
scoreboard players operation RNG RNG_Variable *= C_314159 RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_2718281 RNG_Constant
scoreboard players operation RNG RNG_Variable *= RNG RNG_Variable
scoreboard players operation RNG RNG_Variable /= C_1000 RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_314159 RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_2718281 RNG_Constant

scoreboard players operation RNG RNG_Variable %= C_stands RNG_Constant
scoreboard players add RNG RNG_Variable 1