Class {
	#name : #ReWritedPharoDoc,
	#superclass : #Object,
	#instVars : [
		'acdc'
	],
	#classInstVars : [
		'acdc'
	],
	#category : #PharoDocTestPhD
}

{ #category : #fileout }
ReWritedPharoDoc class >> methodeCreationDeFichier:className [
"ceci est un commentaire"

	|sautLigne index commentClass elementDuByteString subClasses work stream methodes elementDesMethodes |
	commentClass := className comment.
	
	sautLigne:= '
	'.
	work := FileSystem disk workingDirectory.
	stream := (work / 'manilmasdo2ua.txt') writeStream.
	stream nextPutAll: 'Resume of the class'.

	stream nextPutAll:  sautLigne.
	stream nextPutAll:  'Le nom de la superclasse: '.
	stream nextPutAll: className superclass name.

	stream nextPutAll:  sautLigne.
	stream nextPutAll: 'Le commentaire de la classe'.
	stream nextPutAll:  sautLigne.
	methodes := className methodDict asArray.
	
	
	
	stream nextPutAll: commentClass.
	
	stream nextPutAll:  sautLigne.
	stream nextPutAll: 'Les variables d instance'.
	stream nextPutAll:  sautLigne.
	stream nextPutAll: className instanceVariablesString.
		
	stream nextPutAll:  sautLigne.
	stream nextPutAll: 'Les sous classes'.
	stream nextPutAll:  sautLigne.
	
	subClasses := className subclasses.
	index :=1.
	elementDuByteString := subClasses at: index.
	[elementDuByteString isNotNil & index<= subClasses size] whileTrue: [ elementDuByteString := subClasses at:index.
		index := index + 1.
		stream nextPutAll: ' '.
		stream nextPutAll: elementDuByteString  name. ].
	stream nextPutAll:  sautLigne.
	index :=1.
	
	stream nextPutAll:  sautLigne.
	stream nextPutAll: 'Les methodes'.
	stream nextPutAll:  sautLigne.
	
	elementDesMethodes := methodes at:index.
	[elementDesMethodes isNotNil & index<= methodes size] whileTrue: [ elementDesMethodes := methodes at:index.
		index := index + 1.
		stream nextPutAll: sautLigne.
		stream nextPutAll: elementDesMethodes  name. ].

	stream close.
]
