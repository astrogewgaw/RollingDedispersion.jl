using Test
using RollingDedispersion

@testset "RollingDedispersion.jl" begin
    open("./data/frb.fil") do s
        seek(s, 360)
        data = Array{UInt8}(read(s))
        data = reshape(data, 128, :)

        Δf = 200.0
        dm = 1000.0
        fₕ = 498.4375
        δt = 1.31072e-3

        dedispersed = RollingDedispersion.rolldd(
            data;
            fₕ=fₕ,
            Δf=Δf,
            δt=δt,
            dm=dm,
        )

        nt = size(dedispersed, 2)
        t = range(0.0, nt * δt, nt)
        ts = sum(Float64, dedispersed, dims=1)'[:, 1]

        @test argmax(ts) == 3898
        @test maximum(ts) ≈ 28366.0
        @test t[argmax(ts)] ≈ 5.0 atol = 0.25
    end
end
