# Set Up Scoreboard
scoreboard objectives add fungus minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add time minecraft.custom:minecraft.total_world_time
scoreboard objectives add stand dummy
scoreboard objectives add milk minecraft.used:minecraft.milk_bucket
scoreboard objectives add pearl dummy
scoreboard objectives add resetstand trigger
scoreboard objectives add evolution dummy
scoreboard objectives add armorstand minecraft.used:minecraft.armor_stand
scoreboard objectives add kqowner dummy
scoreboard objectives add explode dummy
scoreboard objectives add kqtwo dummy
scoreboard players set @a time 200

# setup RNG generator
scoreboard objectives add RNG_Constant dummy
scoreboard objectives add RNG_Variable dummy
scoreboard players set C_1000 RNG_Constant 1000
scoreboard players set C_314159 RNG_Constant 314159
scoreboard players set C_2718281 RNG_Constant 2718281
# number of obtainable stands
scoreboard players set C_stands RNG_Constant 9
scoreboard players set RNGseed RNG_Variable 0