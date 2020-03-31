load strings.mat;
ent = conditional_value_entropy(X, Y, 'a');
disp(ent);