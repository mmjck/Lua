function mult2(value)
    v = value
    return v*2
end

print("Enter a number: ")
input = io.read()

v2 = mult2(input)
print( input .. "*2 = " .. v2)
