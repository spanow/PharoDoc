Class {
	#name : #ReWritedPharoDoc,
	#superclass : #Object,
	#category : #PharoDocTestPhD
}

{ #category : #fileout }
ReWritedPharoDoc class >> methodeCreationDeFichier:className [
"ceci est un commentaire"

	|index commentClass elementDuByteString subClasses work methodes elementDesMethodes title pencil|
	commentClass := className comment.
	
	pencil := Pencil new.
	work := FileSystem disk workingDirectory.
	pencil creationFichier: 'FichierDeSortie.txt'.
	
	
	title := Title new.
	title title: 'Resumé de la classe :'.
	title nomClass: className name.
	pencil ecritureDansFichier: title titreConstruit.

	
	pencil ecritureDansFichier:  'Le nom de la superclasse: '.
	pencil ecritureDansFichier: className superclass name.

	
	pencil ecritureDansFichier: 'Le commentaire de la classe'.
	
	methodes := className methods.
	
	
	
	pencil ecritureDansFichier: commentClass.
	
	
	pencil ecritureDansFichier: 'Les variables d instance'.
	
	pencil ecritureDansFichier: className instanceVariablesString.
		
	
	pencil ecritureDansFichier: 'Les sous classes'.
	
	
	subClasses := className subclasses.
	index :=1.
	elementDuByteString := subClasses at: index.
	[elementDuByteString isNotNil & index<= subClasses size] whileTrue: [ elementDuByteString := subClasses at:index.
		index := index + 1.
		pencil ecritureDansFichier: ' '.
		pencil ecritureDansFichier: elementDuByteString  name. ].
	
	index :=1.
	
	
	pencil ecritureDansFichier: 'Les methodes'.
	
	
	elementDesMethodes := methodes at:index.
	[elementDesMethodes isNotNil & index<= methodes size] whileTrue: [ elementDesMethodes := methodes at:index.
		index := index + 1.
		pencil ecritureDansFichier: elementDesMethodes name.
		elementDesMethodes comment isNotNil
		ifTrue: [
			pencil ecritureDansFichier: 'Commentaire de la méthode'.
			pencil ecritureDansFichier: elementDesMethodes comment. ]
		 ].

	pencil fermetureFichier.
]
