function R = redundancy(X)
    ent_max = log2(length(X));
    ent = entropy(X);
    R = 1 - (ent / ent_max);
end