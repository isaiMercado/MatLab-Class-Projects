function timeComplexity()

    index = 1;
    increments = 1000;
    maxIncremets = 12000;
    
    for rows = 1000 : increments : maxIncremets 
        A = randn(rows, rows);
        B = randn(rows, rows);
    
        tic;
        A*B;
        range(index) = toc;
        domain(index) = rows;
        fprintf(strcat('rows:', num2str(rows), '\n'));
        index = index + 1;
    end
    plot(domain, range)
    plot(log(domain), log(range))
end