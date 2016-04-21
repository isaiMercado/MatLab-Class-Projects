function determinant = mydet(matrix_A)
    
    dimensionX = 1;
    rows = size(matrix_A, dimensionX);
    
    determinant_L = 1;
    determinant_U = 1;
    
    [matrix_L, matrix_U] = mylu(matrix_A);
    
    for row = 1: rows       
        determinant_L = determinant_L * matrix_L(row, row);
        determinant_U = determinant_U * matrix_U(row, row);
    end
    
    determinant = determinant_L * determinant_U;

end