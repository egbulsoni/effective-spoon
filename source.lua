color = 'red'
price = 1.74

print("red", 2, true, false)

for number=1, 4 do
    print(number)
end

for n=4, 1, -1 do
    print(n)
end

a = true

if a then
    print("verdadeiro ", a)
end

lista = {1, 2, 3}
lista[6] = 6 
-- estranho, ele deixa criar o elemento na posicao 6
-- no entanto, o loop so pega ate o 3o index

for i=1, #lista do
    print(lista[i])
end

-- matriz
matriz = {{"a", "b", "c"},
    {"d", "e", "f"},
    {"g", "h", "i"}}

print(matriz[2][1])

for index, line in pairs(matriz) do
    print("Line " .. index .. ":")
    for _, column in pairs(line) do
        print(column)
    end
end

list = { 
    a = 10,
    b = 20,
    color = "red",
    [14] = "b",
    [true] = "C",
}

print(list["a"])
print(list["b"])
print(list["color"])
print(list[14])

for key, value in pairs(list) do
    print(tostring(key) .. ": " .. value)
end

-- duas listas iguais
lista1 = {"a", "b", "c"}
-- mesma coisa
lista1 = {
    [1] = "a",
    [2] = "b",
    [3] = "c",
}

products = {
    {name = "apple", price = 2.48}, 
    {name = "orange", price = 1.79}
}

for _, product in pairs(products) do
    -- print(product["name"])
    print(product.name)
    print(product.price)
end

list = {"A", "B", "C"}
result = table.concat(list, "\n")
print(result)

list = {"c", "a", "b", "e", "d"}

table.sort(list)

for _, v in pairs(list) do
    io.write(v .. ', ')
end
io.write('\n')

list = {1,2,3,4,5,6}

table.remove(list, 3)
table.insert(list, #list + 1, "a")

for i, v in pairs(list) do
    print(i .. ": " .. v)
end

-- value ~= 0 (value is different than 0

function sum(a, b)
    result = a+b
    return result
end

print(sum(2, 4))
print(4 + 3)

function capitalize(word)
    first = string.sub(word, 1, 1)
    remaining = string.sub(word, 2, #word)
    return (
        string.upper(first) ..
        string.lower(remaining))
end


print(capitalize("blUE"))
print(capitalize("RED"))
print(capitalize("yeLLOW"))

function my_function(param)
    return param
end

print(my_function(true))
print(my_function("edu"))
print(my_function(1237))

function reduce(list, initial, fn)
    result = initial
    for _, value in pairs(list) do
        result = fn(result, value)
    end
    return result
end

sum = function(a,b)
    return a + b
end

concat = function(a,b)
    return a .. b
end

list = {2, 4, 6}
list_b = {"A", "B", "C", "D"}
print(reduce(list, 0, sum))
print(reduce(list_b, "", concat))

-- function validate(value)
--     if value < 10 then
--         error('Less than 10')
--     end
-- end

-- validate(8)

function validate2()
    return 10, 20, 30
end

a, b, c = validate2()
print(a, b)
print(c)

function validate3(value)
    if value > 10 then
        return true, nil
    else
        return false, "invalid number"
    end
end

valid, error_message = validate3(7)

-- print(valid)
-- print(error_message)
if valid then
    print("OK!")
else
    print(error_message)
end

valid, error_message = validate3(12)

-- print(valid)
-- print(error_message)
if valid then
    print("OK!")
else
    print(error_message)
end