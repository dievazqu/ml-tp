function e_5b()
	data = load('plumas.txt');
	figure;
	hist(data(:,2));
	title('pluma tipica');
	figure;
	hist(data(:, 3));
	title('pluma rara');
	figure;
	boxplot(data(:,2));
	title('pluma tipica');
	figure;
	boxplot(data(:, 3));
	title('pluma rara');	
end
