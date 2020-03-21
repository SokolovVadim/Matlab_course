% input values
c    = -20;
d    = 20;
step = 0.01;
a    = 1;

% array of X points
x = (c:step:d);

% array of sinc(x) values
y = mysinc(x, a);

% build graphs
plot(x, y);
