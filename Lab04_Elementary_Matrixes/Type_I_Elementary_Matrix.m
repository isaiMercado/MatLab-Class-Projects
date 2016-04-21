function resultMatrix = Type_I_Elementary_Matrix(size, row1, row2)
% This function is the elemntary matrix will have the form
%   |0 1 0|   |a11 a12 a13 a14|   |a21 a22 a23 a24|
%   |1 0 0| * |a21 a22 a23 a24| = |a11 a12 a13 a14|
%   |0 0 1|   |a31 a32 a33 a34|   |a31 a32 a33 a34|

    resultMatrix = eye(size);
    resultMatrix(row1, row1);
    resultMatrix(row2, row2);
    resultMatrix(row2, row1);
    resultMatrix(row1, row2);
end