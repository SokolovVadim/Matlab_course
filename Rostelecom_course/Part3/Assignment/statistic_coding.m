load('data/1.mat');     % writes to variable 'data'

[alphabet, probabilities] = getAlphabetAndProbabilities(statistics_data); 

fprintf("Zero order symbol entropy: %g bits\n", ? );
fprintf("Symbol entropy: %g bits\n", ? );

fprintf("Input stream bit volume: %d bit\n", ? );

[ encoded_data, encoded_parameters ] = encodeData( data );

fprintf("Coded data length: %d bits\n", ? );
fprintf("Coded metadata length: %d bits\n", ? );
fprintf("Total code length: %d bits\n", ? );

fprintf("Average code length per symbol: %g bits\n", ? );
fprintf("Average total length per symbol: %g bits\n", ? );


decoded_data = decodeData( encoded_data, encoded_parameters );

if (numel(input_data)~=numel(decoded_data))
    fprintf("Length mismatch\n");
elseif (any(input_data~=decoded_data))
    fprintf("Wrong symbol\n");
else
    fprintf("Correct decoding!\n");
end