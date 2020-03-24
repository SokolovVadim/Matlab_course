function root = Square_solution(a, b, c)
    INFINIT       = -715;
    NOSOL         = 715;
    %disp(a);
    %disp(b);
    %disp(c);
    a_size = size(a);
    a_size = a_size(2);
    root = zeros(a_size, 2);
    %disp(root(1));
    for i = 1:a_size
        if(a(i) == 0)
            res = Linear_solution(b(i), c(i));
            root(i, 1) = res(1, 1);
            root(i, 2) = res(1, 2);
        else 
            if(b(i) == 0)
                if(c(i) == 0) % a != 0, b == 0, c == 0
                    root(i, 1) = INFINIT;
                    root(i, 2) = INFINIT;
                else % a != 0, b == 0, c != 0
                    if(-c / a >= 0)
                        root(i, 1) = -sqrt(-c / a);
                        root(i, 2) = -sqrt(-c / a);
                    else % can't calculate square root (complex solution)
                        root(i, 1) = NOSOL;
                        root(i, 2) = NOSOL;
                    end
                end
            else % a != 0, b != 0
                discr(i) = b(i).^ 2 - 4.* a(i).* c(i);
                if(discr(i) < 0)
                    root(i, 1) = NOSOL;
                    root(i, 2) = NOSOL;
                else
                    discr_sqrt(i) = sqrt(discr(i));
                    root(i, 1) = (-b(i) + discr_sqrt(i)) / (2 * a(i));
                    root(i, 2) = (-b(i) - discr_sqrt(i)) / (2 * a(i));
                end
            end
        end
    end
    %disp(root);
end

