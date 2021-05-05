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
Counter >> count [
	"Provide the current value"
	^ count

]

{ #category : #accessing }
Counter >> count: startingValue [
	count := startingValue

]
