function printPlot()
	start = 0;
	final = 10;
	points = 100;
	domain = linspace(start, final, points);
	range = (domain .^ 2) - (7 .* domain) + 10;
	plot(domain, range);
end
