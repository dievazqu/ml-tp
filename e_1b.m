function e_1b()
	load fisheriris;
	meas2(:,1) = meas(:,1).*meas(:,2);
	meas2(:,2) = meas(:,3).*meas(:,4);
	gscatter(meas2(:,1), meas2(:,2), species,'rgb','osd');
	xlabel('Area del petalo [cm^2]');
	ylabel('Area del sepalo [cm^2]');

	figure;

	gscatter(meas(:,1), meas(:,2), species,'rgb','osd');
	xlabel('Largo del petalo [cm]');
	ylabel('Ancho del petalo [cm]');

	figure;
	gscatter(meas(:,3), meas(:,4), species,'rgb','osd');
	xlabel('Largo del sepalo [cm]');
	ylabel('Ancho del sepalo [cm]');
	
	figure;
	colors = {'ro','gs','bd'};
	for i = 1:3
		i
		j = 50 * (i-1) + 1 : 50 * i;
		plot3(meas(j,1), meas(j,2), meas(j,3), colors{i});
		hold on
	end
	hold off
	grid on
	xlabel('Largo del sepalo [cm]'); ylabel('Ancho del sepalo [cm]'); zlabel('Largo del petalo [cm]');
	legend('setosas', 'versicolor', 'virginica');
	view(-137, 10);
	
	
	figure;
	colors = {'ro','gs','bd'};
	for i = 1:3
		j = 50 * (i-1) + 1 : 50 * i;
		plot3(meas(j,1), meas(j,2), meas(j,4), colors{i});
		hold on
	end
	hold off
	grid on
	legend('setosas', 'versicolor', 'virginica');
	xlabel('Largo del sepalo [cm]'); ylabel('Ancho del sepalo [cm]'); zlabel('Ancho del petalo [cm]');
	view(-137, 10);
end
