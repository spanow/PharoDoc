Class {
	#name : #TitleTest,
	#superclass : #TestCase,
	#category : #'PharoDocTestPhD-Tests'
}

{ #category : #tests }
TitleTest >> testTitreConstruit [
	
	| title |
	title := Title new.
	title title:'titre'.
	title nomClass: 'nom'.
	
	self assert: title titreConstruit equals:'titrenom'.
]
