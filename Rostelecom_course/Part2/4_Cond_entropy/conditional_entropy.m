function ent = conditional_entropy(X, Y)
    [alph, prob] = alphabet_probabilities(Y);
    alph_size = size(alph);
    cond_ent = zeros(alph_size);
    
    ent = 0;
    for i = 1:alph_size(2)
        cond_ent(i) = conditional_value_entropy(X, Y, alph(i));
        ent = ent + prob(i) * cond_ent(i);
    end
end