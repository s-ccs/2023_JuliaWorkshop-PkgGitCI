function mandelbrot(a)
      z = 0
      for i=1:50
          z = z^2 + a
          if abs.(z) > 2
              break
          end
      end
      return  z
  end



  y = -1:0.01:1
  x = -2:0.01:0.5


  A = zeros(length(x),length(y))

  for ix = 1:length(x)
    for iy = 1:length(y)
      c = complex(x[ix],y[iy])
      A[ix,iy] = abs(mandelbrot(c))
    end
  end

using UnicodePlots
heatmap(A)
  


#----
# c = [complex(x, y) for x in x for y in y]
# A = Array{Float64}(undef,length(y),length(x))
# A[:] = abs.(mandelbrot.(c))
  
 
