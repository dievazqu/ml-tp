function e_5a()
	data = load('plumas.txt');
	D = data(:, 2) - data(:, 3);
	[h,p,ci,stats] = ttest(D)
end
