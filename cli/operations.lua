add = function(a, b)
    return a + b
end

subtract = function(a,b)
    return a - b
end

divide = function(a,b)
    return a / b
end

multiply = function(a, b)
    return a * b
end

operations = {
    add = add,
    divide = divide,
    multiply = multiply,
    subtract = subtract
}
return operations

-- outra forma de fazer eh declarando a tabela operations no comeco do arquivo
-- por ex
-- operations = {}
--
-- depois, declarar cada funcao como parte da tabela, ex:
-- function operations.add(a,b)
-- e depois, retornar operations
-- return operations