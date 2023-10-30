function fib(n)
    local phi = (1 + math.sqrt(5)) / 2
    local psi = (1 - math.sqrt(5)) / 2
    return math.floor((phi^n - psi^n) / math.sqrt(5) + 0.5)
    end
    
    print(fib(32))