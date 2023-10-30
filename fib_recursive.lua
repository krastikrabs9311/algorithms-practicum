function fib(n)
    if n == 0 then
        return 0
    elseif n == 1 then
        return 1
    else
        return fib(n - 1) + fib(n - 2)
    end
end

local n_values = {10, 20, 30, 35, 40}
for _, n in ipairs(n_values) do
    local start_time = os.clock()
    local result = fib(n)
    local end_time = os.clock()
    local execution_time = (end_time - start_time) * 1000    print("fib(" .. n .. ") = " .. result .. ", Time: " .. execution_time .. " ms")
end
