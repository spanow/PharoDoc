Class {
	#name : #SautLigneTest,
	#superclass : #TestCase,
	#category : #'PharoDocTestPhD-Tests'
}

{ #category : #tests }
SautLigneTest >> testSauterLigne [
	
	| sauterLaLigne |
	
	
	sauterLaLigne := '
	'.
	
	self assert: SautLigne sauterLigne equals:sauterLaLigne.
]
