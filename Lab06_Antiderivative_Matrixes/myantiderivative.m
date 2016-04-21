function new_coordinates = myantiderivative(coordinate_vector)
% This function returns the antiderivative matrix of cos(ax)e^(bx) and sin(ax)e^(bx) 
%
% We first compute the derivatives 
% cos(ax)e^(bx) = b * cos(ax)e^(bx) - a * sin(ax)e^(bx)
% sin(ax)e^(bx) = a * cos(ax)e^(bx) + b * sin(ax)e^(bx)
%
% Second we compute the derivative matrix which is
% |b*cos(ax)e^(bx) -a*sin(ax)e^(bx)|                |1 -1| 
% |a*cos(ax)e^(bx)  b*sin(ax)e^(bx)| represented as |1  1|
% because 
% |b*cos(ax)e^(bx) -a*sin(ax)e^(bx)|   |1|
% |a*cos(ax)e^(bx)  b*sin(ax)e^(bx)| * |0| = b * cos(ax)e^(bx) - a * sin(ax)e^(bx)
% and
% |b*cos(ax)e^(bx) -a*sin(ax)e^(bx)|   |0|
% |a*cos(ax)e^(bx)  b*sin(ax)e^(bx)| * |1| = a * cos(ax)e^(bx) + b * sin(ax)e^(bx)
%
% We now calculate the antiderivative matrix by taking the inverse of the derivative matrix.
% The antiderivative matrix is
%                 | b*cos(ax)e^(bx) a*sin(ax)e^(bx)|                | 1 1|
% 1 / a^2 + b^2 * |-a*cos(ax)e^(bx) b*sin(ax)e^(bx)| represented as |-1 1|
%
% For example; the antiderivative of 14 * sin(ax)e^(bx) = (14*-a*cos(ax)e^(bx) * 14*b*sin(ax)e^(bx)) / a^2 + b^2
% We can get the same result by the antiderivative matrix
%                 | b*cos(ax)e^(bx) a*sin(ax)e^(bx)|   |0 |
% 1 / a^2 + b^2 * |-a*cos(ax)e^(bx) b*sin(ax)e^(bx)| * |14| = (14*-a*cos(ax)e^(bx) * 14*b*sin(ax)e^(bx)) / a^2 + b^2

    A_inv = get_cos_sin_anti_derivative_matrix();
    new_coordinates = dot_product(A_inv, coordinate_vector);
    
end
