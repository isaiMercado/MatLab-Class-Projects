function [matrix_L, matrix_U] = mylu(matrix_A)
    
    dimensionX = 1;
    rows = size(matrix_A, dimensionX);
    matrix_L = eye(rows);
    
    for row1 = 1 :rows
        
       for row2 = row1+1 :rows
           
           matrix_A_constant = -matrix_A(row2, row1) / matrix_A(row1, row1);
           matrix_L_constant = -matrix_A_constant;
           
           matrix_A = Type_III_Elementary_Matrix(rows, row2, row1, matrix_A_constant) * matrix_A;
           matrix_L = Type_III_Elementary_Matrix(rows, row2, row1, matrix_L_constant) * matrix_L;
       end
       
    end
    
    matrix_U = matrix_A;

end