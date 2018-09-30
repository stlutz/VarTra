*VarTra
testDupTemps

	| temp temp1 |
	temp1 := 1.
	temp := {#bla . #keks . #baguette . #fromage}
				detect: [temp1 ifNotNil: [:ea | ea notNil]]