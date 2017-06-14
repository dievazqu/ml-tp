function e_8a()
    load fisheriris;
    A = meas(1:50, :);
    B = meas(51:100, :);
    C = meas(101:150, :);
    fprintf(1, 'setosa:');
    mean(A)
    cov(A)

    fprintf(1, 'versicolor:');
    mean(B)
    cov(B)

    fprintf(1, 'virginica:');
    mean(C)
    cov(C)
end