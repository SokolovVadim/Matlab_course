load strings.mat
% 1)
cond_ent_XY = conditional_entropy(X, Y);
disp(cond_ent_XY);

% 2)
ent_X = entropy(X);
disp(ent_X);


% 3)                                
cond_ent_YY = conditional_entropy('abcd', 'dcba');
disp(cond_ent_YY);

% 4)
x = 'cabdaccacdbcccccdacdbcdcbcdaccbcacccbdcbcccccdbcccccccacbcdadddbbacdbcdcdccccccabccdcabcccdcbccccacc';
y = 'dbaabddbabadbababbbccbcbcbbbadddccdddaadbddabbcdacddddcdabbbaabbcbbacdbdabdabacabdcacaaadcadbaacacaa';

cond_ent_xy = conditional_entropy(x, y);
disp(cond_ent_xy);

