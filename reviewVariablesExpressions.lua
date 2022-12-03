-------------------------------------
--- Variables
-------------------------------------
-- We assign Values to Variables

-------------------
--- What are the main Variable Types?
-------------------

-- nil
local variable_nil = nil

-- boolean - assign true or false
local variable_boolean = true
variable_boolean = false

-- number - assign all negative and positive numbers
local variable_number = 1
variable_number = 1.0

-- string - assigns text / characters
-- Goes inside single quotes, double quotes or brackets
local variable_string = "string"
-- Escape with \
variable_string = "\"The Cat in the Hat\" was amazing!"
-- Use single quote for strings
variable_string = '"The Cat in the Hat" was amazing!'
-- Use [[ ... ]] syntax for multi line strings
variable_string = [[
"The Cat in the Hat" was 'amazing'
]]
-- Concatenating strings with ...
local word_a = "The"
local word_b = "End"
local sentence = word_a.." "..word_b.."!"
print(sentence)

-- Table
-- As an Array
local variable_table_array = {1, 2, 3}
local table_element = variable_table_array[1]
-- As a Dictionary
local variable_table_expanded_dictionary = {["First Name"] = "Adam", ["age"] = 21}
table_element = variable_table_expanded_dictionary["First Name"]
local variable_table_dictionary = {name = "Adam", age = 21}
table_element = variable_table_dictionary.name
variable_table_dictionary = {x = 2, y = 1, z = 4}

-------------------------------------
--- Expressions
-------------------------------------

-------------------
--- What are some examples of expressions?
-------------------
-- Math operations
-- Add
local add_value = 5 + 3
-- Subtract
local sub_value = 5 - 3
-- Multiplication
local mult_value = 8 * 3
-- Division
local div_value = 8 / 3
-- Modulo
local mod_value = 8 % 3

-- Boolean operations
local speed_limit = 60
local current_speed = 80
-- Greater Than: >
local is_speeding = current_speed > speed_limit
-- Less Than: <
local is_slow = current_speed < 10
-- Greater Than or Equal To: >=
-- Less Than or Equal To: <=
local my_age = 25
local drinking_age = 21
local can_drink = my_age >= drinking_age    -- Greater than or equal to
can_drink = drinking_age <= my_age          -- Less than or equal to
can_drink = (drinking_age < my_age) or (drinking_age == my_age) -- Expanded
-- Equal To: ==
local first_man = "Adam"
local my_name = "Adam"
local has_same_name = first_man == my_name
-- Not Equal To: ~=
local has_different_name = first_man ~= my_name
-- and
-- or
-- not - Flips a boolean value from true to false and vice versa
has_different_name = not has_same_name
