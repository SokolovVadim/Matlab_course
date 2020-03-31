% cond ent
load strings.mat;
ent = conditional_entropy(X, Y);
disp(ent);