function fib(n)
    local fibArray = {} 
    for i = 1, n do
      if i <= 2 then
        fibArray[i] = i - 1 
      else
        fibArray[i] = fibArray[i - 1] + fibArray[i - 2] 
      end
    end
  
    io.write("[")
    for i = 1, n do
      io.write(fibArray[i])
      if i < n then
        io.write(", ")
      end
    end
    io.write("]\n")
  end
  
  fib(10)  -- Вызываем функцию