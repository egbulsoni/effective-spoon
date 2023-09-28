-- print("CLI")

-- for index, value in pairs(arg) do
--     print(index, value)
-- end

-- print(arg[1] + arg[2])

-- a = arg[1]
-- b = arg[2]

-- result = a + b
-- print(result)

add = require("add")
subtract = require("subtract")
divide = require("divide")
multiply = require("multiply")

command = arg[1]

a = arg[2]
b = arg[3]

if command == "sum" then
    print(add(a,b))
elseif command == "subtract" then
    print(subtract(a, b))
elseif command == "multiply" then
    print(multiply(a,b))
elseif command == "divide" then
    print(divide(a,b))
else
    print("Unknown command: " .. command)
end