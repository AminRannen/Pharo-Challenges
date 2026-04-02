Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'Challenges',
	#package : 'Challenges'
}

{ #category : 'tests' }
CounterTest >> testCountIsSetAndRead [
 | c |
 c := MyCounter new.
 c count: 7.
 self assert: c count equals: 7
]
