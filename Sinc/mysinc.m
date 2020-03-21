function sinc = mysinc(x, a)
    % get array info
    [dim, data_range] = size(x);
    
    disp(dim);
    disp(data_range);
    
    % preventing extra initialization
    sinc = zeros(data_range, 1);
    for s = 1: 1: data_range
        if(x(s)-a == 0)
            sinc(s) = 1;
        else
            sinc(s) = sin(x(s) - a) / (x(s) - a);
        end
    end
end
