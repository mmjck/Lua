function counter ()
    local i = 0
    return function ()
        i = i+1
        return i
    end
end



local c = counter()
print(c())
print(c())



local t = {}        -- cria nova tabela
t[1] = 4            -- armazena 4 no  ́ındice 1
t[2] = "PLP"        -- armazena "PLP" no  ́ındice 2
t["PLP"] = 5        -- armazena 5 no  ́ındice "PLP"
t[t[2]] = 0         -- armazena 0 no  ́ındice "PLP" (sobrescrevendo)


variable = {}
variable[1] = 4
print(variable[1])

variable = "Assume uma string"
print(variable)

variable = 0
print(variable)

variable = "Voltou a ser string"
print(variable)



if <expr> then
    ...
end



if <expr> then
    ...
else
    ...
end




if <expr> then
    ...
elseif <expr> then
    ...
else
    ...
end


while <expr> do
    ...
end


repeat 
    ...
until <expr>



for var = <expr_ini>, <expr>, <expr_incr> do
    ...
end

