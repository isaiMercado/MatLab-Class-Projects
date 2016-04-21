function matrix_A = type3(matrix_A, row1, row2, constant)

    matrix_A(row1,:) = constant * matrix_A(row2,:) + matrix_A(row1,:);

end