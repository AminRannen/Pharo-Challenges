Class {
	#name : 'Challenge0',
	#superclass : 'Object',
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'as yet unclassified' }
Challenge0 >> showimage [
(ZnEasy getPng: 'https://pharo.org/web/files/pharo.png')
asMorph openInWindow
]
