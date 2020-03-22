a = 10;
b = 20;
% random variables counter
N = 1;
 
% vector size
n = randi([a b],1,N);
disp(n);
 
% randomize vector
vector = rand(1, n);
 
% fill 3 elems from the end with zeros
vector(end-2:end)=0;
 
disp(vector);
 
% find max val & its idx
[val, idx] = max(vector);
str = ['val = ', num2str(val), ' idx = ', num2str(idx)];
disp(str);
