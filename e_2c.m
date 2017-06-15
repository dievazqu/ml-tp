function cell = e_2c()
	load fisheriris;
	a{1} = meas(1:50, :);
	a{2} = meas(51:100, :);
	a{3} = meas(101:150, :);

	for i=1:length(a)
		cell{i} = intervals(a{i}, 0.05);
	end 
	
end
	
function mat = intervals(data, trust)
	
	med = mean(data);
	n = size(data,1);
	bound = tinv(1-trust/2, n-1);
	s2 = std(data);
	for i=1:size(data,2)
		mat(i,1) =  med(i) - bound * s2(i) / sqrt(n);
		mat(i,2) =  med(i) + bound * s2(i) / sqrt(n);
		#fprintf('(%.4f, %.4f)\n', mat(i,1), mat(i,2))
	end
end
