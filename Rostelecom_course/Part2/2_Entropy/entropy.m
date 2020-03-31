function ent = entropy(X)
    disp(X);
    alp_prob = alphabet_probabilities(X);
    ent = -sum(alp_prob{1, 2} .* log2(alp_prob{1, 2}));
    %disp(ent);
end