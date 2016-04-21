function e_x_derivative_matrix = get_e_x_derivative_matrix(input_vector)
    input_length = length(input_vector);
    e_x_derivative_matrix = eye(input_length);
    
    counter = 1;
    for row = 1 : input_length
        for col = 1 : input_length
            if row == col 
                if col + 1 <= input_length
                    e_x_derivative_matrix(row, col + 1) = counter;
                end
            end
        end
        counter = counter + 1;
    end
    
end