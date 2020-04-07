function condv_ent = conditional_value_entropy(X, Y, y)
   if(isempty(find(Y == y)))
       condv_ent = -1;
       disp('y is not contained in Y');
       return;
   end
   
   X = X(Y == y);
   condv_ent = entropy(X);
   
end