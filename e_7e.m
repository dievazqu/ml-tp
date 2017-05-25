function e_7e()
    x = [1790:10:1990];
    y = load('population.txt')';
    [p1 S1 mu1] = polyfit(x, y, 2);
    [p2 S2 mu2] = polyfit(x, y, 3);

    pred1 = polyval(p1, 2000, S1, mu1);
    pred2 = polyval(p2, 2000, S2, mu2);

    poblacion2000 = 281421906;

    fprintf(1, 'La curva ajustada con un polinomio de grado 2 predice una poblacion para el año 2000 de: %d\n', pred1);
    fprintf(1, 'La curva ajustada con un polinomio de grado 3 predice una poblacion para el año 2000 de: %d\n', pred2);

    err1 = abs(poblacion2000 - pred1);
    err2 = abs(poblacion2000 - pred2);

    fprintf(1, 'Si la poblacion en el año 2000 es %d, el polinomio de grado 2 tiene un error de: %d\n', poblacion2000, err1);
    fprintf(1, 'Si la poblacion en el año 2000 es %d, el polinomio de grado 3 tiene un error de: %d\n', poblacion2000, err2);
end