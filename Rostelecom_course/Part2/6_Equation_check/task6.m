% Equation check
% H(X), H(Y), R(X), R(Y), H(XY), H(Y|X), H(X|Y), I(X;Y), I(Y;X)
load strings.mat
% round(value, position)
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
format long;
% Equation check
L = length(X);
% 1) H(X|Y) <= H(X) <= log2(L)
if(cond_ent_XY <= ent_X && ent_X <= log2(L))
    disp("1) correct");
else
    disp("1) incorrect");
end
% 2) H(Y|X) <= H(Y) <= log2(L)
if(cond_ent_YX <= ent_Y && ent_Y <= log2(L))
    disp("2) correct");
else
    disp("2) incorrect");
end
% 3) I(X;Y) == I(Y;X)
if(inf_XY == inf_YX)
    disp("3) correct");
else
    disp("3) incorrect");
end
% 4) H(XY) = H(X) + H(Y|X)
if(round(ent_XY, 10) == round(ent_X + cond_ent_YX, 10))
    disp("4) correct");
else
    disp("4) incorrect");
end
% 5) H(XY) = H(Y) + H(X|Y)
if(round(ent_XY, 10) == round(ent_Y + cond_ent_XY, 10))
    disp("5) correct");
else
    disp("5) incorrect");
end
