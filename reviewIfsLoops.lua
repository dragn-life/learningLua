-------------------------------------
--- If Statements
-------------------------------------
-- Conditionals
-- Branching logic

-------------------
--- Simple if statement:
--- if <condition> then
---     <Block of Code>
--- end
-------------------

-- If Condition is true, then execute the block
if true then
    -- Block of Code
    --print("We're True!")
end

-- If Condition is false, then don't execute the block
if false then
    -- Block of Code does not get executed.
    print("Nothing was Executed")
end

if true and false then
    print("True and False!")
end

-------------------
--- Simple if else statement
--- if <condition> then
---     <Block of True Code>
--- else (aka otherwise)
---     <Block of False Code>
--- end
-------------------

if true then
    --print("We're True!")
else
    print("We're False!")
end

if false then
    print("We're True!")
else
    --print("We're False!")
end

-------------------
--- Simple if elseif statement
--- if <Condition A> then
---     <Code Block A>
--- elseif <Condition B> then
---     <Code Block B>
--- elseif <Condition C> then
---     <Code Block C>
--- end
-------------------

local age = 10
local is_child = age <= 12
local is_teen = age <= 18 and age >= 13
local is_adult = age > 18

if is_child then
    --print("I'm a Child!")
elseif is_teen then
    --print("I'm a Teen!")
elseif is_adult then
    --print("I'm an Adult!")
end

age = 18.5
if age < 13 then
    --print("I'm a Child!")
elseif age < 19 then
    --print("I'm a Teen!")
else
    --print("I'm an Adult!")
end

local clock = 19
if clock < 12 then
    --print("It's Morning!")
elseif clock < 18 then
    --print("It's the Afternoon!")
else
    --print("It's Evening!")
end

-- Nested If Statements
if true then
    if false then
    else
        --print("It was false!")
    end
end

-------------------------------------
--- While Loops
-------------------------------------

-------------------
--- Simple while statement:
--- while <condition> do
---     <Block of Code>
--- end
-------------------
local index = 6
while index <= 5 do
    --print(index)
    index = index + 1
end

index = 0
while true do
    --print(index)
    index = index + 1
    if index > 5 then
        break
    end
end

local game_is_on = true
while game_is_on do
    game_is_on = false
end

-------------------
--- Simple repeat statement:
--- repeat
---     <Block of Code>
--- until <condition>
-------------------
index = 6
repeat
    --print(index)
    index = index + 1
until index > 5


-------------------------------------
--- For Loops
-------------------------------------

-------------------
--- Simple Numeric for loop:
--- for var=exp1, exp2, exp3 do
---     <Block of Code>
--- end
-------------------
-- Increments i by 1 on each loop
for i = 1, 5 do
    --print(i)
end

-- Increments i by 10 on each loop
for i = 1, 50, 10 do
    --print(i)
end

-- Decrement i by 1 on each loop
for i = 5, 1, -1 do
    --print(i)
end

-- Nested For Loops
for i = 1, 5 do
    for j = 1, 5 do
        --print("i:"..i.." j:"..j)
    end
end

-------------------
--- Simple Generic for loop:
--- for i,v in ipairs/pairs do
---     <Block of Code>
--- end
-------------------

-- ipairs() is used for Arrays
-- pairs() is used for Tables/Dictionaries

local scores = { 90, 80, 85, 76, 100 }
for i, v in ipairs(scores) do
    --print("Index: " .. i .. " With Value: " .. v)
end

local vector3 = { x = 1.0, y = 5.0, z = -12.0 }
for k, v in pairs(vector3) do
    --print("Key: " .. k .. " Has Value: " .. v)
end

-- Nested Generic For Loops
-- Mostly used for multi dimensional tables/arrays
local matrix = {
    { 3, 8, 9 },
    { 1, 4, 5 },
    { 7, 6, 3 },
}

for row_i, row_v in ipairs(matrix) do
    for col_i, col_v in ipairs(row_v) do
        --print("Row: "..row_i.." At Column: "..col_i.." is: "..col_v)
    end
end

-- Using Break to Find things:
local animals = { "Pig", "Cow", "Goat", "Dog", "Cat" }
local look_for_animal = "Goat"

for i, v in ipairs(animals) do
    if look_for_animal == v then
        --print("Found "..look_for_animal.." At Position: "..i)
        break
    end
    --print(v)
end

-- Finding things in multi dimensional array
for row_i, row_v in ipairs(matrix) do
    local is_found = false
    for col_i, col_v in ipairs(row_v) do
        if col_v == 4 then
            --print("Row: "..row_i.." At Column: "..col_i.." is: "..col_v)
            is_found = true
            break
        end
    end
    if (is_found) then
        break
    end
end
