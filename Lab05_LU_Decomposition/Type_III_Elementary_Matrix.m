function resultMatrix = Type_III_Elementary_Matrix(size, row1, row2, constant)
% This function is the elemntary matrix will have the form
%   |1 0 0|   |a11 a12 a13 a14|   |   a11      a12      a13      a14  |
%   |c 1 0| * |a21 a22 a23 a24| = |ca11+a21 ca12+a22 ca13+a23 ca14+a24|
%   |0 0 1|   |a31 a32 a33 a34|   |   a31      a32      a33      a34  |

    resultMatrix = eye(size);
    resultMatrix(row1, row2) = constant;
end