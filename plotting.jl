using UnicodePlots
function plot_mandelbrot(A::AbstractMatrix)
    heatmap(A)
end

plot_mandelbrot(;kwargs...) =         plot_mandelbrot(mandelbrot(;kwargs...))
