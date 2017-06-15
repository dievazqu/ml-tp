function e_7b()
    x = [1790:10:1990];
    y = load('population.txt')';
    [p S mu] = polyfit(x, y, 2)
    yp = polyval(p, x, S, mu);

    plot(x, y, '.', 'Color', 'red');
    hold on;
    plot(x, yp, 'Color', 'blue');
    hold off;
    xlabel('Anios');
    ylabel('Poblacion (x1e6)');

    figure; plot(x, y-yp, 'o', 'Color', 'red');
    xlabel('Anios');
    ylabel('Residuos');

    b = bondad(y, yp);
    fprintf(1, 'El valor de la bondad es: %.7f\n', b);
end