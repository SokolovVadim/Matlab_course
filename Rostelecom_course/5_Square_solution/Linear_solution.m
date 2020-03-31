function root = Linear_solution(b, c, i)
    if(b == 0)
        if(c == 0) % a == 0, b == 0, c == 0
            disp(string(i) + ') Infinite number of solutions');
        else % a == 0, b == 0, c != 0
            disp(string(i) + ') No solutions!');
        end
    else % a == 0, b != 0
        disp(string(i) + ') ' + string(-c / b));
    end
end
