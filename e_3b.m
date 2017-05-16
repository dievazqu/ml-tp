function cell = e_3b()
	load fisheriris;
	h{1} = meas(1:50, :);
	h{2} = meas(51:100, :);
	h{3} = meas(101:150, :);

	boxplot(h{1}(:,1));
	title('setosa - largo sepalo');
	figure;
	boxplot(h{1}(:,2));
	title('setosa - ancho sepalo');
	figure;
	boxplot(h{1}(:,3));
	title('setosa - largo petalo');
	figure;
	boxplot(h{1}(:,4));
	title('setosa - ancho petalo');
	figure;
	
	boxplot(h{2}(:,1));
	title('versicolor - largo sepalo');
	figure;
	boxplot(h{2}(:,2));
	title('versicolor - ancho sepalo');
	figure;
	boxplot(h{2}(:,3));
	title('versicolor - largo petalo');
	figure;
	boxplot(h{2}(:,4));
	title('versicolor - ancho petalo');
	figure;
	
	boxplot(h{3}(:,1));
	title('virginica - largo sepalo');
	figure;
	boxplot(h{3}(:,2));
	title('virginica - ancho sepalo');
	figure;
	boxplot(h{3}(:,3));
	title('virginica - largo petalo');
	figure;
	
	boxplot(h{3}(:,4));
	title('virginica - ancho petalo');
end
