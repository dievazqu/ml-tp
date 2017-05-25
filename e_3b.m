function cell = e_3b()
	load fisheriris;
	h{1} = meas(1:50, :);
	h{2} = meas(51:100, :);
	h{3} = meas(101:150, :);
name{1} = 'Setosa';
	name{2} = 'Versicolor';
	name{3} = 'Virginica';
	
	for i=1:3
		figure;
		boxplot(h{i}(:,1));
		title(name{i});
		ylabel('Largo del sepalo [cm]');
		
		figure;
		boxplot(h{i}(:,2));
		title(name{i});
		ylabel('Ancho del sepalo [cm]');
		
		figure;
		boxplot(h{i}(:,3));
		title(name{i});
		ylabel('Largo del petalo [cm]');
		
		figure;
		boxplot(h{i}(:,4));
		title(name{i});
		ylabel('Ancho del petalo [cm]');
		
	end
end
