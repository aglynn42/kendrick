as yet unclassified
testCommutingRateOf
	|population network rate|
	population := self createMetaPopulationForTesting.
	network := KECommutingNetwork newOn: population atAttribute: #patch.
	network 
		edges: { 1->2. 2->3. 3->4. 5->5 };
		leaveRatesOfAllConnections: 0.1;
		returnRatesOfAllConnections: 2.
	rate := network commutingRateOf: (network atNode: 2).
	
	self assert: rate equals: 0.1