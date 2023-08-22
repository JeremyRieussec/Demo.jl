using Test
using Demo

println("Test 1 ----")
@test [1, 2] + [2, 1] == [3, 3]

println("Test 2 ----")
@test Demo.greet() == "Hello World!"

println("Test 3 ----")
@test Demo.domath(5.0) == 7.0