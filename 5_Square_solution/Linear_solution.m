function root = Linear_solution(b, c)
    NOSOL         = 715;
    INFINIT       = -715;
    THE_ONLY_ROOT = 814;
    root = zeros(1, 2);
    if(b == 0)
        if(c == 0) % a == 0, b == 0, c == 0
            root(1, 1) = INFINIT;
            root(1, 2) = INFINIT
        else % a == 0, b == 0, c != 0
            root(1, 1) = NOSOL;
            root(1, 1) = NOSOL;
        end
    else
        root(1, 1) = -c / b;
        root(1, 2) = THE_ONLY_ROOT;
    end
end
