function root = Linear_solution(b, c)
    if(b == 0)
        if(c == 0) % a == 0, b == 0, c == 0
            root = [INFINIT, INFINIT];
        else % a == 0, b == 0, c != 0
            root = [NOSOL, NOSOL];
        end
    else
        root = -c / b;
    end
end
