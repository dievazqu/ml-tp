function e_5b()
	data = load('plumas.txt');
	figure;
	hist(data(:,2));
	title('pluma tipica');
	xlabel('Amarillez');
	ylabel('Muestras');
	figure;
	hist(data(:, 3));
	title('pluma rara');
	xlabel('Amarillez');
	ylabel('Muestras');
	figure;
	boxplot(data(:,2));
	title('pluma tipica');
	ylabel('Amarillez');
	figure;
	boxplot(data(:, 3));
	title('pluma rara');
	ylabel('Amarillez');	
end
