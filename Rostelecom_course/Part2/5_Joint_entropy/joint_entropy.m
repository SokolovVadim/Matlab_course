function j_ent = joint_entropy(X, Y)
     % j_ent = entropy(Y) + conditional_entropy(X, Y);
    tuple = string([X' Y'])';
    j_ent = entropy(tuple);
end