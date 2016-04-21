function sum = addOddNumbers()
	sum = 0;
	for number = 5 : 99
		if mod(number, 2) ~= 0
			sum = sum + number
		end
	end
end
