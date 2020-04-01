% Equation check
% H(X), H(Y), R(X), R(Y), H(XY), H(Y|X), H(X|Y), I(X;Y), I(Y;X)
load strings.mat
% H(X)
ent_X = entropy(X);
disp(ent_X);
% H(Y)
ent_Y = entropy(Y);
disp(ent_Y);
% R(X)
red_X = redundancy(X);
disp(red_X);
% R(Y)
red_Y = redundancy(Y);
disp(red_Y);
% H(XY)
ent_XY = joint_entropy(X, Y);
disp(ent_XY);
% H(Y|H)
cond_ent_YX = conditional_entropy(Y, X);
disp(cond_ent_YX);
% H(X|Y)
cond_ent_XY = conditional_entropy(X, Y);
disp(cond_ent_XY);
% I(X;Y)
inf_XY = information(X, Y);
disp(inf_XY);
% I(Y;X)
inf_YX = information(Y, X);
disp(inf_XY);
