accessing
testDupTemps

	| temp temp1 |
	temp1 := 1.
	temp := {#bla . #keks . #baguette . #fromage}
				ifNotNil: [:sym | sym size > temp1]