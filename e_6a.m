function e_6a()
	
	a = load('brain.txt');
	figure;
	plot(a(:,1), a(:,2), 'r.');
	hold on;
	plot(a(14,1), a(14,2), 'b.');
	plot(a(15,1), a(15,2), 'g.');
	plot(a(25,1), a(25,2), 'y.');
	p = polyfit(a(:,1), a(:,2), 1)
	xlabel('Peso del cuerpo [Kg]');
	ylabel('Peso del cerebro [g]');
	legend('otras especies','humanos','elefantes africanos','branquiosaurios');
	figure;
	plot(log(a(:,1)), log(a(:,2)), 'r.');
	xlabel('log(Peso del cuerpo) [Kg]');
	ylabel('log(Peso del cerebro) [g]');
	
	figure;
	stats = regstats(a(:,2), a(:,1));
	r2 = bondad(a(:,2), stats.yhat)
	stats = regstats(log(a(:,2)), log(a(:,1)));
	plot(log(a(:,2)),stats.r,'ro');
	xlabel('log(Peso del cuerpo) [Kg]')
	ylabel('residuos [g]')
	figure;
	idx = find(stats.r>-2);
	x = a(:,1);
	y = a(:,2);
	stats = regstats(log(y(idx)), log(x(idx)));
	plot(log(y(idx)),stats.r,'ro')
	xlabel('log(Peso del cuerpo) [Kg]')
	ylabel('residuos [g]')
end
