function matrix_A = Reduced_Row_Echelon_Form(matrix_A)
    
    dimensionX = 1;
    dimensionY = 2;
    
    rows = size(matrix_A,dimensionX);
    cols = size(matrix_A,dimensionY) - 1;

    fprintf(strcat('rows: ', num2str(rows), '\n'));
    fprintf(strcat('cols: ', num2str(cols), '\n'));
    
    for col = 1:cols
        
       for row = 1:rows
           
           if col ~= row
               
              fprintf(strcat('col: ', num2str(col), '\n'));
              fprintf(strcat('row: ', num2str(row), '\n\n'));
               
              constant = -matrix_A(row, col) / matrix_A(col,col);
              matrix_A = Type_III_Row_Operation(matrix_A, row, col, constant);
               
           end
           
       end
        
    end
    
        
   for row = 1:size(matrix_A,dimensionX)

      constant = 1 / matrix_A(row, row);
      matrix_A = Type_II_Row_Operation(matrix_A, row, constant);

   end

end
