% graph builder

% input values
c    = 0.01;
d    = 100;
step = 0.01;
k = (-1 + (7)*(rand(1,randi([1,8])))).';
k_size = size(k);
% disp(k);

% array of X points
x = (c:step:d);

y = Graph_builder(k, x);

fig = plot(x, y, 'LineWidth', 3);
axis([0.01 2 -5 2]);

str_arr = string(k);
for i = 1:k_size
    str_arr(i) = ' - k = ' + str_arr(i);
end
disp(str_arr);
lgd = legend(str_arr, 'Location','southeast');
lgd.FontSize = 12;


grid on;
title('Y = k * lnX')
xlabel('x')
ylabel('y')

print('Graphs.png','-dpng','-r300');  
