module RollingDedispersion

const 𝓓 = 4.1488064239e3

function rolldd!(I′::AbstractMatrix, I::AbstractMatrix; fₕ, Δf, δt, dm)
    nf = size(I, 1)
    @inbounds Threads.@threads for i ∈ axes(I, 1)
        f = fₕ - ((i - 1) * Δf / nf)
        ξ = round(Int, 𝓓 * dm * (f^-2 - fₕ^-2) / δt)
        I′[i, :] .= circshift(I[i, :], -ξ)
    end
end

function rolldd(I::AbstractMatrix; fₕ, Δf, δt, dm)
    I′ = similar(I)
    rolldd!(I′, I; fₕ, Δf, δt, dm)
    I′
end

end
