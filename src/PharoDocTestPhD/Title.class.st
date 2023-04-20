Class {
	#name : #Title,
	#superclass : #Object,
	#instVars : [
		'title',
		'nomClass'
	],
	#category : #PharoDocTestPhD
}

{ #category : #accessing }
Title >> nomClass [
	^nomClass
]

{ #category : #accessing }
Title >> nomClass: newNomClass [
	nomClass:= newNomClass 
]

{ #category : #accessing }
Title >> title [
	^title
]

{ #category : #accessing }
Title >> title: newTitle [
	title := newTitle 
]

{ #category : #accessing }
Title >> titreConstruit [
	^ (title,nomClass)
]
