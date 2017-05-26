function e_6d()
	data_ = load('brain.txt');
	data_ = [data_(1:13,:);
		data_(16:24, :);
		data_(26:end, :)];
	data = log(data_);
	x_ = mean(data(:,1));
	y_ = mean(data(:,2));
	n = size(data,1);
	num = 0;
	den = 0;
	num = (data(:,1)-x_)'*(data(:,2)-y_);
	den = (data(:,1)-x_)'*(data(:,1)-x_);
	
	if (den == 0)
		a = Inf;
		b = data(1,1);
	else
		b = num/den;
		a = y_ - b * x_;
	end
	
	plot(data(:,1),data(:,2), 'r.');
	hold on;
	v = [-5:13];
	plot(v,v*b+a, 'b');
	xlabel('log(Peso del cuerpo) [Kg]');
	ylabel('log(Peso del cerebro) [g]');
	bon = bondad(data(:,2), data(:,1)*b+a)
	hold off;
end
