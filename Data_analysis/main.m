% graph builder

% input values
c    = 0.01;
d    = 100;
step = 0.01;
k = (-1 + (7)*(rand(1,randi([1,8])))).';
% disp(k);

% array of X points
x = (c:step:d);

y = Graph_builder(k, x);

