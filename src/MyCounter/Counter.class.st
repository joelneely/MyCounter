"
I count things.

Public API and Key Messages

- increment   add 1 to my count
- decrement   subtract 1 from my count
- count       provide the current count

Its creation API is message startingAt:

"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
	"creates a new instance initialized to the target value as its count"	
			
	^ self new count: anInteger.

]

{ #category : #accessing }
Counter >> count [
	"Provide the current value"
	^ count

]

{ #category : #accessing }
Counter >> count: startingValue [
	count := startingValue

]

{ #category : #operations }
Counter >> decrement [
	"decrease the count"
	count := count - 1
	
]

{ #category : #operations }
Counter >> increment [
	"increases the count"
	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [
	"ensure that the initial count is zero"	
			
	count := 0

]

{ #category : #printing }
Counter >> printOn: aStream [
	"provide an enhanced representation of an instance"

	super printOn: aStream.
	aStream
		nextPutAll: ' with value: ';
		nextPutAll: count printString  "the printString message is necessary!"
]
