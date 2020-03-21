c = -20;
d = 20;
step = 0.1;
x = (c:step:d);
a = 1;
% disp(x);
% number of data points
data_range = (d-c) / step + 1;
disp(data_range);

y = mysinc(x, a);

% y = zeros(data_range, 1);
% %disp(y);
% for s = 1: 1: data_range
%    y(s) = mysinc(x(s), a);
% end

%disp(y);
plot(x, y);
