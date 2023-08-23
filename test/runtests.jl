using Test
using Demo

### Single tests
println("Test 1 ----")
@test [1, 2] + [2, 1] == [3, 3]

println("Test 2 ----")
@test greet() == "Hello World!"

println("Test 3 ----")
@test domath(5.0) == 11.0

println("Test 4 ----")
@test bar([1, 2], [1, 2]) == [2,4]

### Imprecise tests
# As calculations on floating-point values can be imprecise, you can perform approximate equality checks 
println("Imprecision test ----")
@test 1 ≈ 0.999999  rtol=1e-5

### Test sets
@testset "trigonometric identities" begin
    θ = 2/3*π
    @test sin(-θ) ≈ -sin(θ)
    @test cos(-θ) ≈ cos(θ)
    @test sin(2θ) ≈ 2*sin(θ)*cos(θ)
    @test cos(2θ) ≈ cos(θ)^2 - sin(θ)^2
end;

@testset "Foo Tests" begin
    @testset "Animals" begin
        @testset "Felines" begin
            @test foo("cat") == 9
        end
        @testset "Canines" begin
            @test foo("dog") == 9
        end
    end
    @testset "Arrays $i" for i in 1:3
        @test foo(zeros(i)) == i^2
        @test foo(fill(1.0, i)) == i^2
    end
end;


