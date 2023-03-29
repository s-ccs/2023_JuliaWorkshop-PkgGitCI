

    function mandelbrot(a::Complex;maxIterations=50,returnIteration = false,kwargs...)
        z = 0
        for i=1:maxIterations
            z = z^2 + a
            if abs.(z) > 2
                return returnIteration ? i : z
            end
        end
        return  returnIteration ? maxIterations : z
    end



    function generatePlane(;Δy = 0.01,Δx = 0.01,ymin = -1,ymax = 1,xmin = -2,xmax = 0.5,kwargs...)
        y=ymin:Δy:ymax
        x=xmin:Δx:xmax
    
        c = [complex(x, y) for x in x for y in y]
        return x,y,c 
    end

    function mandelbrot(;kwargs...)
        x,y,c = generatePlane(;kwargs...)

        A = Array{Float64}(undef,length(y),length(x))
        A[:] = abs.(mandelbrot.(c;kwargs...))
        return A
    end
