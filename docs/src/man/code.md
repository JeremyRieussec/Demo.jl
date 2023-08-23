# Examples of code displaying

## Julia code
To use ```Demo.jl``` in your project, 

```julia
using Demo
Pkg.add("DiscretePredictors")
```

```julia

function func(x)
    # ...
end
```

```sh
$ julia --project make.jl
```

## Macros

```@repl
a = 1
b = 2
a + b
```

```@repl
sqrt(-1)
```

```@repl
printstyled("hello, world"; color=:red, bold=true)
```