function sinc = mysinc(x, a)
    sinc = zeros(401, 1);
    for s = 1: 1: 401
        if(x(s)-a == 0)
            sinc(s) = 1;
        else
            sinc(s) = sin(x(s) - a) / (x(s) - a);
        end
    end
end
