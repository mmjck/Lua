function fact(n)
    if n < 2 then
        return 1
    else 
        return n * fact(n - 1)
    end
end


value = 10
fact_value = fact(value)
print(fact_value)
        
    