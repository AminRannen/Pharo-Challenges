Class {
	#name : 'Challenge3',
	#superclass : 'Object',
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'as yet unclassified' }
Challenge3 class >> getCapital: aCountryName [
    | response data countries |
    
response := ZnClient new
    url: 'http://api.geonames.org/countryInfoJSON';
    queryAt: 'username' put: 'ranen'; " <--- Ici "
    get.
        
    data := STONJSON fromString: response.
    countries := data at: 'geonames'.
    
    "On cherche directement dans la collection sans créer de dictionnaire"
    ^ (countries 
        detect: [ :each | (each at: 'countryName') = aCountryName ]
        ifFound: [ :found | found at: 'capital' ]
        ifNone: [ 'Non trouvé' ])
]

{ #category : 'as yet unclassified' }
Challenge3 >> getCapital: aCountryName [
    | response data countries countryDict |
    
    "1. Récupération des données"
    response := ZnClient new
        url: 'http://api.geonames.org/countryInfoJSON?username=demo';
        get.
        
    data := STONJSON fromString: response.
    countries := data at: 'geonames'.
    
    "2. Création d'un dictionnaire pour une recherche facile"
    countryDict := Dictionary new.
    countries do: [ :each | 
        countryDict at: (each at: 'countryName') put: (each at: 'capital') 
    ].
    
    "3. Recherche du pays (avec gestion d'erreur au cas où le pays n'existe pas)"
    ^ countryDict at: aCountryName ifAbsent: [ 'Pays non trouvé' ]
]
