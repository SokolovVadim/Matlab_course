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

% Equation check
L = length(X);
% 1) H(Y) <= H(X) <= L
if(and((ent_Y <= ent_X), (ent_X <= L)))
    disp("1) correct");
else
    disp("1) incorrect");
end
% 2) H(X) <= H(Y) <= L
if(and((ent_X <= ent_Y), (ent_Y <= L)))
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
% 4) H(XY) = H(X) + H(X)
if(ent_XY == ent_X + ent_X)
    disp("4) correct");
else
    disp("4) incorrect");
end
% 5) H(XY) = H(Y) + H(Y)
if(ent_XY == ent_Y + ent_Y)
    disp("5) correct");
else
    disp("5) incorrect");
end
