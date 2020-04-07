function [alph, prob] = alphabet_probabilities(X) 
    X_size = size(X);
    symbolic_array = unique(X);
    
    array_size = size(symbolic_array, 2);
    prob_array = zeros(1, array_size);
    
    for i = 1:4
        prob_array(i) = length(find(X == symbolic_array(i))) / X_size(2);
    end
    
    alph = symbolic_array;
    prob = prob_array;
end