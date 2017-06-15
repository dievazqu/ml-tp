function e_7a()
    x = [1790:10:1990];
    y = load('population.txt');
    % de dividen los valores de y para lograr que el plot muestre los valores de y en millones como pide el enunciado
    plot(x, y/(1e6), '.', 'Color', 'red');
    xlabel('Anios');
    ylabel('Poblacion (x1e6)');
end