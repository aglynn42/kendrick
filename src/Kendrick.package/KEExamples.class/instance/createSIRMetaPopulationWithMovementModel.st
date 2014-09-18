tests
createSIRMetaPopulationWithMovementModel
	|model population graph|
	population := KEMetaPopulation new.
	population forEachSubPopulation: [ :each|
		each compartments: #(S I).
		each at: #S put: 1000; at: #I put: 10
		 ].
	(population at: 1) at: #S put: 1000; at: #I put: 1.
	graph := KEGraph on: population.
	graph edges: #all moveRates: 0.001.
	
	model := KEModel new.
	model population: population.
	model addParameter: #mu value: 0.0001.
	model addParameter: #beta value: 0.0001.
	model addParameter: #gamma value: 0.1.
	model addParameter: #N value: 10000.
	model addEquation:
		('S:t=mu*N - beta*S*I - mu*S' parseAsAnEquation).
	model addEquation:
		('I:t=beta*S*I - gamma*I - mu*I' parseAsAnEquation).
	model run: #RK4 from: 0.0 to: 2910 step: 0.1.
	model plot: #I.
	
	^ model  
	
	
	
	
	