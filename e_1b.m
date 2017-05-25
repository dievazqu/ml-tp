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

end
