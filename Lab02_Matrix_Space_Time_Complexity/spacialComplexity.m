function spacialComplexity()
    
    cols = 1;
    increments = 500;
    maxIncremets = 20000;
    
    for rows = 1000 : increments : maxIncremets 
        A = randn(rows, rows);
        b = randn(rows, cols);
    
        timeStart = tic;
        A*b;
        timeElapsed = toc(timeStart);
        fprintf(strcat('timeElapsed: ', num2str(timeElapsed), '\n'));
        fprintf(strcat('rows:', num2str(rows), '\n'));
    end
end