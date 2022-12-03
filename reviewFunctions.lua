-------------------------------------
--- Functions
-------------------------------------

-- Parameter = Variable that holds the value/argument passed up to the function.
-- Argument = Value of some sort.

-------------------
--- Simple function definition:
--- function <function name> (param1, param2...etc)
---     <Block of Code>
--- end
---
--- To call / invoke function:
--- <function name>(arg1, arg2...etc)
--- Behind the Scenes:
---     param1 = arg1
---     param2 = arg2
-------------------

function printFullName (first_name, last_name)
    print(first_name .. " " .. last_name)
end

--printFullName("First", "Last")
--printFullName("Brianne", "Tarth")

-- Scopes: Where the variable is visible
-- Child code blocks has access to the parents variables
local my_local_variable = "My Local Variable"

function doSomething ()
    print(my_local_variable)
end

--doSomething()

-- local variables in functions are not visible outside the function block
-- global variables created in functions is visible outside the block.
function doSomething2 ()
    my_local_variable_2 = "My Local Variable 2"
end
--doSomething2()
--print(my_local_variable_2)

local my_var = "My Var From the World!"

function doSomething3()
    local my_var = "My Var From the Function!"
    --print(my_var)
end
--print(my_var)
doSomething3()
--print(my_var)


-------------------
--- Simple return function definition:
--- function <function  name> (param1, param1...etc)
---     <Block of Code>
---     return <value>
--- end
---
--- To call / invoke function:
--- local result = <function name>(arg1, arg2...etc)
-------------------

function add(a, b)
    return a + b
end
--print(add(5, 3))

-- Early Returns
function addOrSub(a, b, shouldAdd)
    if shouldAdd then
        return a + b
    end
    return a - b
end
--print(addOrSub(5, 3, true))
--print(addOrSub(5, 3, false))

-- Single Returns
function multOrDiv(a, b, shouldMult)
    local result
    if shouldMult then
        result = a * b
    else
        result = a / b
    end
    -- Only return once in a function
    return result
end
--print(multOrDiv(5, 3, true))
--print(multOrDiv(5, 3, false))

-------------------
--- Multiple result function definition:
--- function <function  name> (param1, param1...etc)
---     <Block of Code>
---     return <value1>, <value2>, etc
--- end
---
--- To call / invoke function:
--- local result1, result2, etc = <function name>(arg1, arg2...etc)
-------------------

function getMeMagicNumbers()
    local magic_number_1 = math.random(1, 50)
    local magic_number_2 = math.random(1, 50)
    local magic_number_3 = math.random(1, 50)
    return magic_number_1, magic_number_2, magic_number_3
end
--print(getMeMagicNumbers())
local mn1, mn2, mn3 = getMeMagicNumbers()

-------------------
--- Variable number of Arguments:
--- Use the ... notation:
--- function <function name> (...)
---     <Block of Code>
--- end
---
--- To call / invoke function:
--- <function name>(arg1, arg2...etc)
-------------------

function addMultiArgs (...)
    local sum = 0
    -- Extract the Arguments
    local args = { ... }
    -- All the values are stored in the arg table/array
    for i, v in ipairs(args) do
        sum = sum + v
    end
    return sum
end
--print(addMultiArgs(1, 2, 3, 4, 5))

-------------------
--- Named Arguments:
--- function <function name> (arg)
---     <Block of Code>
--- end
---
--- To call / invoke function:
--- <function name>{param1 = arg1, param2 = arg2...etc}
-------------------

function printProfile (profile)
    print(profile.first_name.." is "..profile.age.." years old and loves "..profile.favorite_food)
end

printProfile { first_name = "Adam", age = 21, favorite_food = "Burger" }

