function root = Square_solution(a, b, c)
    a_size = size(a);
    a_size = a_size(2);
    for i = 1:a_size
        if(a(i) == 0)
            Linear_solution(b(i), c(i), i);
        else 
            if(b(i) == 0)
                if(c(i) == 0) % a != 0, b == 0, c == 0
                    disp(string(i) + ') 0');
                else % a != 0, b == 0, c != 0
                    if(-c / a >= 0)
                        disp(string(i) + ') ' + string(-sqrt(-c / a)) + ' ' + string(sqrt(-c / a)));
                        %disp(sqrt(-c / a));
                    else % can't calculate square root (complex solution)
                        disp(string(i) + ') No solutions!');
                    end
                end
            else % a != 0, b != 0
                discr(i) = b(i).^ 2 - 4.* a(i).* c(i);
                if(discr(i) < 0)
                    disp(string(i) + ') No solutions!');
                else
                    discr_sqrt(i) = sqrt(discr(i));
                    disp(string(i) + ') ' + string((-b(i) + discr_sqrt(i)) / (2 * a(i))) + ' ' + string((-b(i) - discr_sqrt(i)) / (2 * a(i))));
                    %disp((-b(i) - discr_sqrt(i)) / (2 * a(i)));
                end
            end
        end
    end
    %disp(root);
end

