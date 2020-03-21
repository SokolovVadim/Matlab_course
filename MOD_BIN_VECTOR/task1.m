row_vector = (1:1:100);
% disp(row_vector);

column_vector = row_vector';
% disp(column_vector);

column_vector = column_vector(or((mod(column_vector, 4) == 0), (mod(column_vector, 7) == 0)));
disp(column_vector);
% disp(size(column_vector));

