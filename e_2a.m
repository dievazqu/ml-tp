function cell = e_2a()
	load fisheriris;
	a{1} = meas(1:50, :);
	a{2} = meas(51:100, :);
	a{3} = meas(101:150, :);

	for i=1:length(a)
		cell{i} = metrics(a{i});
	end 
	
end
	
function mat = metrics(data)
	mat = [mean(data);
		std(data,1)];
end
