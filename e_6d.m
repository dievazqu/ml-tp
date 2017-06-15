function e_6d()
	data_ = load('brain.txt');
	data_ = [data_(1:13,:);
		data_(16:24, :);
		data_(26:end, :)];
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
