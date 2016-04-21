function matrix_A = Row_echelon_Form(matrix_A)
    % This function takes a matrix of size n x (n+1) a row reduce it by
    % multiplying the initial matrix to elementary matrixes on the left, so
    % EA = B Where E is the elemntary matrix, A is the input matrix, and B
    % is the resulting matrix
    
    dimensionX = 1;
    rows = size(matrix_A, dimensionX);
    
    fprintf(strcat('rows: ', num2str(rows), '\n'));
    
    for row1 = 1 :rows
        
       for row2 = row1+1 :rows
           
           constant = -matrix_A(row2, row1) / matrix_A(row1, row1);
           matrix_A = Type_III_Elementary_Matrix(rows, row2, row1, constant) * matrix_A;
           
       end
        
       constant = 1 / matrix_A(row1, row1);
       matrix_A = Type_II_Elementary_Matrix(rows, row1, constant) * matrix_A;
       
    end
    
    
end