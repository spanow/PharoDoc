Class {
	#name : #Pencil,
	#superclass : #Object,
	#instVars : [
		'stream'
	],
	#category : #PharoDocTestPhD
}

{ #category : #'as yet unclassified' }
Pencil >> creationFichier: nomDuFichier [
	|work|
	work := FileSystem disk workingDirectory.
	stream := (work / nomDuFichier) writeStream.
]

{ #category : #'as yet unclassified' }
Pencil >> ecritureDansFichier: entree [
	stream nextPutAll: SautLigne sauterLigne .
	stream nextPutAll: entree.
	stream nextPutAll: SautLigne sauterLigne .
]

{ #category : #accessing }
Pencil >> fermetureFichier [
	stream close.
]

{ #category : #accessing }
Pencil >> stream [
	^stream.
]

{ #category : #accessing }
Pencil >> stream: newStream [
	stream := newStream.
]
