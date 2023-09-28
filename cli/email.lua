email = {}

function is_valid(input)
    at = string.find(input, '@')
    if at == nil then
        return false
    end
    return true
end

function email.provider(input)
    if not is_valid(input) then
        return "Invalid email."
    end

    at = string.find(input, '@')
    name = string.sub(input, at + 1, #input)
    return "Provider: " .. name
end

function email.validate(input)
    if is_valid(input) then
        return "Valid email."
    else
        return "Invalid email"
    end
end

return email