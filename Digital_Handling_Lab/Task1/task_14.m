% Sokolov Vadim, 716 group
% Task 14

matrix = [1/16, 1/16, 1/16, 1/16, 1/8, 1/8, 1/8, 1/8;
            1/8, 1/8, 1/8, 1/8, -1/16, -1/16, -1/16,-1/16;
            1/4, 1/4, -1/4, -1/4, 0, 0, 0, 0;
            0, 0, 1/8, 1/8, 1/4, 1/4, -1/4, -1/4;
            1/8, 1/8, 0, 0, 1/2, 1/2, 0, 0;
            1/8, 1/8, 1/2, 1/2, 0, 0, 0, 0;
            1/2, 1/2, 0, 0, 0, 0, 1/8, 1/8;
            0, 0, 0, 0, 1/8, 1/8, 1/2, 1/2];
        
disp(matrix);

m_size = size(matrix);
m_size = m_size(1);
disp(m_size);

% Numeric format option
format long;

% row norm
for i = 1:m_size
    row_norm = norm(matrix(i, :));
    disp(row_norm);
end

%  scalar dot product
for j = 1:m_size
    for i = 1:m_size
        dot_product = dot(matrix(j, :), matrix(i, :));
        disp(string(j) + 'x' + string(i) + ' = ' + string(dot_product));
    end
end

