Class {
	#name : 'CH04GameBoard',
	#superclass : 'Object',
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'as yet unclassified' }
CH04GameBoard class >> getLocation: aString [
    | query url response json results |
    
    "On utilise l'argument aString au lieu d'une variable fixe"
    query := aString.
    
    url := 'http://nominatim.openstreetmap.org/search?q=' 
            , (query copyReplaceAll: ' ' with: '+') 
            , '&format=jsonv2&limit=10'.

    response := ZnClient new
        get: url.

    json := STON fromString: response.

    results := json collect: [ :each |
        | desc lat lon |
        desc := each at: 'display_name'.
        lat  := (each at: 'lat') asNumber.
        lon  := (each at: 'lon') asNumber.
        desc -> (lat @ lon)
    ].

    ^ results
]
