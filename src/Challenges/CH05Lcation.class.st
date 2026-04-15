Class {
	#name : 'CH05Lcation',
	#superclass : 'Object',
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'as yet unclassified' }
CH05Lcation class >> findLocation: aString [
    | result |
    "On utilise ZnClient de manière sécurisée pour construire l'URL"
    result := ZnClient new
        url: 'http://nominatim.openstreetmap.org/search';
        queryAt: 'q' put: aString;  "<-- Utiliser 'q' évite de concaténer l'URL à la main"
        queryAt: 'format' put: 'jsonv2';
        queryAt: 'limit' put: '10';
        get.

    "On parse et on transforme en collection d'Associations"
    ^ (STONJSON fromString: result) collect: [ :dct |
        (dct at: 'display_name') -> ((dct at: 'lat') asNumber @ (dct at: 'lon') asNumber)
    ]
]
