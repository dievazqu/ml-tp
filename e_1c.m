function a = e_1c()
	load fisheriris;

	k = 33;
	nok = 50-k;
	[trainingSet{1}, testingSet{1}] = getTrainingSet(meas(1:50, :), k);
	[trainingSet{2}, testingSet{2}] = getTrainingSet(meas(51:100, :), k);
	[trainingSet{3}, testingSet{3}] = getTrainingSet(meas(101:150, :), k);
	trainingSet = [trainingSet{1}; trainingSet{2}; trainingSet{3}];
	testingSet = [testingSet{1}; testingSet{2}; testingSet{3}];
	trainingClasses = [species(1:k); species(51:k+50); species(101:k+100)];
	testingClasses = [species(k+1:50); species(k+51:100); species(k+101:150)];
	NB = NaiveBayes.fit(trainingSet, trainingClasses);
	trainingError = sum([ strcmp(NB.predict(trainingSet), trainingClasses)==0]);
	predictions = NB.predict(testingSet);
	testingError = sum([ strcmp(NB.predict(testingSet), testingClasses)==0]);
	fprintf(1, 'training: %d/%d, %.2f%%\n', trainingError, size(trainingSet,1), (double(trainingError)/size(trainingSet,1)*100));
	fprintf(1, 'testing: %d/%d, %.2f%%\n', testingError, size(testingSet,1), (double(testingError)/size(testingSet,1)*100));
	[ sum([strcmp(predictions(1:nok), species(1))]), sum([strcmp(predictions(1:nok), species(51))]) sum([strcmp(predictions(1:nok), species(101))]);
		sum([strcmp(predictions(nok+1:2*nok), species(1))]), sum([strcmp(predictions(nok+1:2*nok), species(51))]) sum([strcmp(predictions(nok+1:2*nok), species(101))]);
		sum([strcmp(predictions(2*nok+1:3*nok), species(1))]), sum([strcmp(predictions(2*nok+1:3*nok), species(51))]) sum([strcmp(predictions(2*nok+1:3*nok), species(101))])]

end


function [trainingSet, testingSet] =  getTrainingSet(data, k)
  idx = randperm(size(data, 1));
  trainingSet = data(idx(1:k), :);
  testingSet = data(idx(k+1:end), :);
end
