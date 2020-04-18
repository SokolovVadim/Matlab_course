% Sokolov Vadim, 716 group
% Task 14
% orthonormal issue resolved

matrix = [1/16, 1/16, 1/16, 1/16, 1/8, 1/8, 1/8, 1/8;
            1/8, 1/8, 1/8, 1/8, -1/16, -1/16, -1/16,-1/16;
            1/4, 1/4, -1/4, -1/4, 0, 0, 0, 0;
            0, 0, 1/8, 1/8, 1/4, 1/4, -1/4, -1/4;
            1/8, 1/8, 0, 0, 1/2, 1/2, 0, 0;
            1/8, 1/8, 1/2, 1/2, 0, 0, 0, 0;
            1/2, 1/2, 0, 0, 0, 0, 1/8, 1/8;
            0, 0, 0, 0, 1/8, 1/8, 1/2, 1/2];
% easy to test matrix
% matrix = [
%         1, 2;
%         2, 1
% ];
        
disp(matrix);

m_size = size(matrix);
m_size = m_size(1);

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

% orthonormal basis for the range of matrix
r = rank(matrix);
disp(r);
Q = orth(matrix);
disp('orthonormal basis');
disp(Q);
disp('Rank of matrix Q consisting of orthonormal vectors:');
disp(rank(Q)); % rank is equal to rank of matrix 

disp('Q`*Q');
disp(Q'*Q);

N = norm(eye(r)-Q'*Q,'fro');
disp('Norm:');
disp(N);

