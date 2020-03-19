function root = Square_solution(a, b, c)
    %disp(a);
    %disp(b);
    %disp(c);
    %root = [0, 0];
    if(a == 0)
        root = Linear_solution(b, c);
    else 
        if(b == 0)
            if(c == 0) % a != 0, b == 0, c == 0
                root = [INFINIT, INFINIT];
            else % a != 0, b == 0, c != 0
                if(-c / a >= 0)
                    root = [-sqrt(-c / a), sqrt(-c / a)];
                else % can't calculate square root (complex solution)
                    root = [NOSOL, NOSOL];
                end
            end
        else % a != 0, b != 0
            discr = b.^ 2 - 4.* a.* c;
            if(discr < 0)
                root = [NOSOL, NOSOL];
            else
                discr_sqrt = sqrt(discr);
                root = [(-b + discr_sqrt) / (2 * a), (-b - discr_sqrt) / (2 * a)];
            end
        end
    end
    %disp(root);
end

