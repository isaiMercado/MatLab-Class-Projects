function reducedMatrix = randomMatrix()
	rows = 5;
	cols = 6;
	randomMatrix = rand(5,6);
	reducedMatrix = rref(randomMatrix);
end
