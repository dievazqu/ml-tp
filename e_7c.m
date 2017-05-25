function e_7c()
    x = [1790:10:1990];
    y = load('population.txt')';
    [p S mu] = polyfit(x, y, 3);
    yp = polyval(p, x, S, mu);

    plot(x, y, 'Color', 'blue');
    hold on;
    plot(x, yp, 'Color', 'red');
    hold off;

    b = bondad(y, yp);

    fprintf(1, 'El valor de la bondad es: %.7f\n', b);
end