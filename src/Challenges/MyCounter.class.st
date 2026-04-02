Class {
	#name : 'MyCounter',
	#superclass : 'Object',
	#instVars : [
		'value'
	],
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'accessing' }
MyCounter >> count [
 ^value 
]

{ #category : 'accessing' }
MyCounter >> count: n [
 n timesRepeat: [ value:=value+1 ]

]

{ #category : 'accessing' }
MyCounter >> increment [
 value:= value + 1
]

{ #category : 'initialization' }
MyCounter >> initialize [ 
 value:=0
]
