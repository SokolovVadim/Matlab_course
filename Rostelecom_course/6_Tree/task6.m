% tree
t1 = {2};
disp('t1');
disp(t1);
t2 = {1, t1};
disp('t2');
disp(t2);
t3 = {4, 5};
disp('t3');
disp(t3);
t4 = {3, t3, 6, 7};
disp('t4');
disp(t4);
tree = {t2, t4};
disp('tree');
disp(tree);

t5 = {8, 9};

node = tree{2}{2}{2};
disp('node');
disp(node);
tree{2}{2}{2}=t5;
node = tree{2}{2}{2}{1};
disp('node after insertion 8, 9 instead of 5');
disp(node);
