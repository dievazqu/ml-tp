% Esto me parece que esta mal.
% Hay que preguntar el viernes que viene.
function cell = e_2b()
	load fisheriris;
	a{1} = meas(1:50, :);
	a{2} = meas(51:100, :);
	a{3} = meas(101:150, :);

	for i=1:length(a)
		cell{i} = error(a{i});
	end 
	
end
	
function err = error(data)
	med = mean(data);
	for i=1:size(med,2)
		err(i) = sum((data(:,i) - med(i)).^2) / size(data,1);
	end
end
