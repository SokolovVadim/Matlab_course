function info = information(X, Y)
    info = entropy(X) - conditional_entropy(X, Y);
end