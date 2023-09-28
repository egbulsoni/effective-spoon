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