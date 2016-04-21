
function new_coordinates = myint(coordinate_vector)
    A = get_e_x_derivative_matrix(coordinate_vector);
    A_inv = inv(A);
    new_coordinates = dot_product(A_inv, coordinate_vector);
end