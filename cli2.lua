-- print("CLI")

-- for index, value in pairs(arg) do
--     print(index, value)
-- end

-- print(arg[1] + arg[2])

-- a = arg[1]
-- b = arg[2]

-- result = a + b
-- print(result)

operations = require("cli/operations")
email = require("cli/email")
command = arg[1]

a = arg[2]
b = arg[3]

if command == "sum" then
    print(operations.add(a,b))
elseif command == "subtract" then
    print(operations.subtract(a, b))
elseif command == "multiply" then
    print(operations.multiply(a,b))
elseif command == "divide" then
    print(operations.divide(a,b))
elseif command == "validate" then
    print(email.validate(a))
elseif command == "provider" then
    print(email.provider(a))
else
    print("Unknown command: " .. command)
end