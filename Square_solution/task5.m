% Ax^2 + Bx + C = 0
% POISON VARIABLES
% INFINIT       = -715;
% NOSOL         = 715;
% THE_ONLY_ROOT = 814;
% a = 1;
% b = 2;
% c = 1;
a = [1, 0, 1];
b = [2, 2, 4];
c = [1, 1, 4];
root = Square_solution(a, b, c);
disp(root);


