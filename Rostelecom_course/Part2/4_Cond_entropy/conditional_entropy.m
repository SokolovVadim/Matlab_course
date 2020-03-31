function ent = conditional_entropy(X, Y)
    alph = unique(Y);
    
    alph_size = size(alph);
    cond_ent = zeros(alph_size);
    
    alph_prob_Y = alphabet_probabilities(Y);
    ent = 0;
    for i = 1:alph_size(2)
        cond_ent(i) = conditional_value_entropy(X, Y, alph(i));
        ent = ent + alph_prob_Y{1, 2}(i) * cond_ent(i);
    end
end