function drawJulia
    n = 500;
    max = 250;
    c = -0.4 + 0.6*i;
    x = linspace(-1.5,1.5,n);
    y = linspace(-1.5,1.5,n);
    color = colorPixels(x,y,n,c,max);
    figure;
    image(x,y,color);
    colormap(pink);
    axis image;
end
 
function color = colorPixels(x,y,n,c,max)
    [x,y] = ndgrid(x,i*y);
    color = arrayfun(@colorCount,x + y);
    
    function col = colorCount(z)
        for k = 1:max
            z = z^2 + c;
            if norm(z) >= 2
                col = k*125/max;
                return
            end
            col = 0;
        end
    end
end
