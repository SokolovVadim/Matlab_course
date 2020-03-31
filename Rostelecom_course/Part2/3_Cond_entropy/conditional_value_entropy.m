function condv_ent = conditional_value_entropy(X, Y)
   %format long;
   disp(X);
   disp(Y);
   X_size = size(X);
   alp_prob_X = alphabet_probabilities(X);
   alp_prob_Y = alphabet_probabilities(Y);
   alp_size = size(alp_prob_X{1,2});
   %condv_ent = -sum();
   %a = (alp_prob{1,2}(2));
   %p_a_b = (length(find(and((X == 'a'), (Y == 'b')))) / X_size(2)) / (alp_prob_Y{1,2}(2));
   condv_ent = 0;
   for i = 1:alp_size(2)
       %p_a_b = (length(find(and((X == alp_prob_X{1, 2}(i)), (Y == alp_prob_Y{1, 2}(i))))) / X_size(2)) ./ (alp_prob_Y{1,2}(i));
       p_a_b = (length(find(and((X == alp_prob_X{1, 1}(i)), (Y == alp_prob_Y{1, 1}(i))))) / X_size(2)) / alp_prob_Y{1,2}(i);
       disp(p_a_b);
       if(p_a_b == 0)
           continue;
       end
       condv_ent = condv_ent - p_a_b * log2(p_a_b);
   end
   % ent = (length(find(and((X == alp_prob_X{1, 2}), (Y == alp_prob_Y{1, 2})))) / X_size(2)) ./ (alp_prob{1,2});
   disp(condv_ent);
end