function matrix_A = type2(matrix_A, row, constant)
    
    matrix_A(row,:) = constant * matrix_A(row,:);
    
end