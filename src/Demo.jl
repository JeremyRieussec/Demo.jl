module Demo

export greet, domath, bar, foo

"""Greetings!!!"""
greet() = "Hello World!"

"""
    domath(x)

Returns double the number `x` plus `1`.
"""
domath(x::Real) = 2*x + 1.0

"""
    foo(x)

Another funny function
"""
foo(x) = length(x)^2

"""
    bar(x[, y])

Compute the Bar index between `x` and `y`.

If `y` is unspecified, compute the Bar index between all pairs of columns of `x`.

# Examples
```julia-repl
julia> bar([1, 2], [1, 2])
1
```
"""
function bar(x,y)
    return x + y
end

end # module Demo