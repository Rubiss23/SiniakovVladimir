

function fib(n)
    i = 0
    fib_sum = 0
    fib1 = 1
    fib2 = 1

    while i < n - 2
        fib_sum = fib1 + fib2
        fib1 = fib2
        fib2 = fib_sum
        i = i + 1
    end
    print("Значение этого элемента: ", fib2)
    
end

function rek(n)
    if n <= 1
        return n
    else
        return (task28_re!(n-1) + task28_re!(n-2))
    end
end

function fibonacci_memo(n,memo=Dict())

    if n<= 1
        return n
    elseif haskey(memo,n)
        return memo[n]
    else
        memo[n] = fibonacci(n-1,memo) + fibonacci(n-2,memo)
        return memo[n]
    end
end