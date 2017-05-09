function e_1b()
			load fisheriris;
			meas2(:,1) = meas(:,1).*meas(:,2);
			meas2(:,2) = meas(:,3).*meas(:,4);
			gscatter(meas2(:,1), meas2(:,2), species,'rgb','osd');
			xlabel('Area del petalo');
			ylabel('Area del sepalo');

			figure;

			gscatter(meas(:,1), meas(:,2), species,'rgb','osd');
			xlabel('Largo del petalo');
			ylabel('Ancho del petalo');

			figure;
			gscatter(meas(:,3), meas(:,4), species,'rgb','osd');
			xlabel('Largo del sepalo');
			ylabel('Ancho del sepalo');


end
