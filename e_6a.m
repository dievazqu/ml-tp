function e_6a()
	
	a = load('brain.txt')
	figure;
	plot(a(:,1), a(:,2), 'r.');
	hold on;
	plot(a(14,1), a(14,2), 'b.');
	plot(a(15,1), a(15,2), 'g.');
	plot(a(25,1), a(25,2), 'y.');
	xlabel('Peso del cuerpo [Kg]');
	ylabel('Peso del cerebro [g]');
	legend('otras especies','humanos','elefantes africanos','branquiosaurios');
	figure;
	plot(log(a(:,1)), log(a(:,2)), 'r.');
	xlabel('log(Peso del cuerpo) [Kg]');
	ylabel('log(Peso del cerebro) [g]');
	
end
