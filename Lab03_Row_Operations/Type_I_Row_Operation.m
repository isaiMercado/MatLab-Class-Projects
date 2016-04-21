function matrix_A = type1(matrix_A, row1,row2) 

tempRow = matrix_A(row1,:);
matrix_A(row1,:) = matrix_A(row2,:);
matrix_A(row2,:) = tempRow;

end