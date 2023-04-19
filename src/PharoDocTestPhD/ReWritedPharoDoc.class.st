Class {
	#name : #ReWritedPharoDoc,
	#superclass : #Object,
	#category : #PharoDocTestPhD
}

{ #category : #fileout }
ReWritedPharoDoc class >> methodeCreationDeFichier [
	| work stream |
	work := FileSystem disk workingDirectory.
	stream := (work / 'foo.txt') writeStream.
	stream nextPutAll: 'Hello World'.
	stream close.
	stream := (work / 'foo.txt') readStream.
	stream contents. 'Hello World'
]

{ #category : #generating }
ReWritedPharoDoc >> methodeCreationDeFichier [
	| work stream |
	work := FileSystem disk workingDirectory.
	stream := (work / 'foo.txt') writeStream.
	stream nextPutAll: 'Hello World'.
	stream close.
	stream := (work / 'foo.txt') readStream.
	stream contents. 'Hello World'
	stream close
]
