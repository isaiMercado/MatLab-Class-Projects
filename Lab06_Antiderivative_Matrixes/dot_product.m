function result = dot_product(matrix, vector)
% This function just performs a dot product of a left
% matrix and a right column vector
    len = length(vector);
    result = zeros(len,1);
    for row = 1:len
        result(row, :) = matrix(row,:) * vector(:);
    end
    result = transpose(result);
end
