function fib_eo(n)
    if n == 0 then
        return "even"
    elseif n == 1 then
        return "odd"
    else
        local a = 0
        local b = 1
        for i = 2, n do
            local temp = (a + b) % 10
            a = b
            b = temp
        end
        if b % 2 == 0 then
            return "even"
        else
            return "odd"
        end
    end
end

print(fib_eo(841645))
