function e_6c()
	data_ = load('brain.txt');
	data = log(data_);
	p = polyfit(data(:,1), data(:,2), 1)
	plot(data(:,1),data(:,2), 'r.');
	hold on;
	v = [-5:13];
	plot(v,polyval(p,v), 'b');
	xlabel('log(Peso del cuerpo) [Kg]');
	ylabel('log(Peso del cerebro) [g]');
	bon = bondad(data(:,2), polyval(p,data(:,1)))
	p
end


