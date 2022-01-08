sum = fn(a, b) -> a + b end

sum.(2, 3)

sum = &(&1 + &2)
