function drawJulia %build the image pixel by pixel.
    n = 500; %size of the image.
    max = 250; %maximum number of iterations to be computed.
    c = -0.4 + 0.6*i; %set the constant in the map z <- z^2 + c used later.
    x = linspace(-1.5,1.5,n); %define the plot space
    y = linspace(-1.5,1.5,n);
    color = colorPixels(x,y,n,c,max); %color matrix for every pixel.
    image(x,y,color); %build the image.
    colormap(pink); %set the color map.
    axis image; %show the axis of the plot space.
end

function color = colorPixels(x,y,n,c,max) %builds color matrix for every pixel.
    [x,y] = ndgrid(x,i*y); %create a complex grid from plot space.
    color = arrayfun(@colorCount,x + y); %call colorCount for every point.
    
    function col = colorCount(z) %distribute colors amongs the points.
        for k = 1:max %iterate at most up to the given maximum.
            z = z^2 + c; %iterate over z.
            if norm(z) >= 2 %verify that the values stay bounded by 2.
                col = k*125/max; %give a color value to the point given by c.
                return
            end
            col = 0; %erase the previous color value to proceed.
        end
    end
end
