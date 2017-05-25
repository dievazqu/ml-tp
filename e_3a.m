function cell = e_3a()
	load fisheriris;
	h{1} = meas(1:50, :);
	h{2} = meas(51:100, :);
	h{3} = meas(101:150, :);
	name{1} = 'Setosa';
	name{2} = 'Versicolor';
	name{3} = 'Virginica';
	
	for i=1:3
		figure;
		hist(h{i}(:,1));
		title(name{i});
		xlabel('Largo del sepalo [cm]');
		ylabel('Muestras');
		figure;
		hist(h{i}(:,2));
		title(name{i});
		xlabel('Ancho del sepalo [cm]');
		ylabel('Muestras');
		figure;
		hist(h{i}(:,3));
		title(name{i});
		xlabel('Largo del petalo [cm]');
		ylabel('Muestras');
		figure;
		hist(h{i}(:,4));
		title(name{i});
		xlabel('Ancho del petalo [cm]');
		ylabel('Muestras');
	end
	
end
