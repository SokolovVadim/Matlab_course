function alph = alphabet_probabilities(X)
    alph = cell(1, 2);
    
    X_size = size(X);
    symbolic_array = unique(X);
    
    array_size = size(symbolic_array);
    % disp(symbolic_array);
    
    prob_array = zeros(array_size);
    
    for i = 1:array_size(2)
        prob_array(i) = length(find(X == symbolic_array(i))) / X_size(2);
    end
    
    alph{1, 1} = symbolic_array;
    alph{1, 2} = prob_array;
end