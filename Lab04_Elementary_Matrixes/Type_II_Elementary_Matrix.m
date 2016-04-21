function resultMatrix = Type_II_Elementary_Matrix(size, row, constant)
% This function is the elemntary matrix will have the form
%   |1 0 0|   |a11 a12 a13 a14|   | a11  a12  a13  a14|
%   |0 c 0| * |a21 a22 a23 a24| = |ca21 ca22 ca23 ca24|
%   |0 0 1|   |a31 a32 a33 a34|   | a31  a32  a33  a34|

    resultMatrix = eye(size);
    resultMatrix(row, row) = constant;
end