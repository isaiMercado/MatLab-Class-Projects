function A = get_cos_sin_anti_derivative_matrix()  
    A = eye(2);
    A(1,1) = 1
    A(1,2) = 1
    A(2,1) = -1
    A(2,2) = 1
end
