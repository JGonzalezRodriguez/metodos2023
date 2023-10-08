function ejercicio7(n)
    x = linspace(-1, 1, n);

    y = 1 ./ (1 + 25 * x.^2);

    coefficients = polyfit(x, y, n-1);

    x_vals = linspace(-1, 1, 1000);

    y_interp = polyval(coefficients, x_vals);

    figure;
    plot(x_vals, y_interp, 'r', 'LineWidth', 2); % Polinomio interpolante
    hold on;
    plot(x, y, 'o', 'MarkerSize', 8); % Puntos originales
    title('Polinomio Interpolante de la Función de Runge');
    xlabel('x');
    ylabel('f(x)');
    legend('Polinomio Interpolante', 'Puntos Originales', 'Location', 'Northwest');
    grid on;
    hold off;
    print('nombre_de_la_grafica.png', '-dpng', '-r300'); % Cambia 'nombre_de_la_grafica.png' al nombre que desees
    pause(10*60);

end