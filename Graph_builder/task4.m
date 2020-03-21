% graph builder

% input values
c    = 0.01;
d    = 100;
step = 0.01;
k = [1; 2];
disp(k);
% k = 1;


% array of X points
x = (c:step:d);

y = Graph_builder(k, x);

plot(x, y);
