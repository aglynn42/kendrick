tests
testAddParameterExpression
	|model |
	model := KEModel new.
	model addParameter: #beta expression: [ :t| t cos ].
	self assert: ((model parameters at: #beta) value: 60) equals: (60 cos)