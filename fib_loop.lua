function fib(n)
    if n < 1 or n > 32 then
        return nil
    end

    local fib1 = 1
    local fib2 = 1

    for i = 3, n do
        local temp = fib1
        fib1 = fib2
        fib2 = temp + fib2
    end

    return fib2
end

local startTime = os.clock()
print(fib(5)) -- Сюда вводить необходимое значение числа Фибоначчи
local endTime = os.clock()
print("Время выполнения для n=5:", endTime - startTime, "секунд")
