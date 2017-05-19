function e_6a()
	
	a = load('brain.txt')
	figure;
	plot(a(:,1), a(:,2), 'r.');
	hold on;
	plot(a(14,1), a(14,2), 'b.');
	plot(a(15,1), a(15,2), 'g.');
	plot(a(25,1), a(25,2), 'y.');
	figure;
	plot(log(a(:,1)), log(a(:,2)), 'r.');
	
	
end
