function e_5a(alpha)
	data = load('plumas.txt');
	D = data(:, 2) - data(:, 3);
	n = size(D,1);
	lim_inf = tinv(alpha/2, n-1)
	T = sqrt(n)*mean(D)/std(D)
	lim_sup = tinv(1-alpha/2, n-1)
end
