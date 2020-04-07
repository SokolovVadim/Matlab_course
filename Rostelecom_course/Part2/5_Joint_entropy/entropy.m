function ent = entropy(X)
    [alph, prob] = alphabet_probabilities(X);
    ent = -sum(prob.* log2(prob));
end