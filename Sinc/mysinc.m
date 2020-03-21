function sinc = mysinc(x, a)
    % new variable A is to be set by a or 0
    A = 0;
    switch nargin
        case 1
            A = 0;
        case 2
            A = a;
        otherwise
            error(['Invalid number of arguments' ...
                ' in function mysinc']);
    end
            
    
    % get array info
    [dim, data_range] = size(x);
    
    disp(dim);
    disp(data_range);
    
    % preventing extra initialization
    sinc = zeros(data_range, 1);
    for s = 1: 1: data_range
        if(x(s) - A == 0)
            sinc(s) = 1;
        else
            sinc(s) = sin(x(s) - A) / (x(s) - A);
        end
    end
end
