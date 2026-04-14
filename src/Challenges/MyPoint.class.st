Class {
	#name : 'MyPoint',
	#superclass : 'Geometry',
	#instVars : [
		'x',
		'y'
	],
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'as yet unclassified' }
MyPoint >> distanceto: aPoint [
    | dx dy |
    dx := x - aPoint x.
    dy := y - aPoint y.
    ^ ((dx * dx) + (dy * dy)) sqrt
]

{ #category : 'accessing' }
MyPoint >> x [
    ^ x
]

{ #category : 'accessing' }
MyPoint >> x:avalue [
 x:=avalue 
 

]

{ #category : 'accessing' }
MyPoint >> y [
    ^ y
]

{ #category : 'accessing' }
MyPoint >> y: avalue [
 y:=avalue 
]
