Class {
	#name : 'Challenge1',
	#superclass : 'Object',
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'as yet unclassified' }
Challenge1 >> fetchAndOpen: anEmail [
    | email hash url bytes image |
 email := anEmail trimBoth asLowercase .
 hash  := (MD5 hashMessage: email) printString . 
 url   :='https://www.gravatar.com/avatar/',hash,'.jpg' .
 bytes :=ZnClient new get: url .
 image :=ImageReadWriter formFromStream: bytes readStream.
 image asMorph openInHand.
]
