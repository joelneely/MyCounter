Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testAlternateCreationMethod [
	self
		assert: ((Counter startingAt: 19) increment ; count)
		equals: 20

]

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new count: 7.
	self assert: c count equals: 7

]

{ #category : #tests }
CounterTest >> testCounterStartingAt5 [
	self
		assert: (Counter startingAt: 5) count
		equals: 5

]

{ #category : #tests }
CounterTest >> testCounterWellInitialized [
	"verify that a new instance is initialized and responds properly"	
	self
		assert: (Counter new increment; increment; count)
		equals: 2

]

{ #category : #tests }
CounterTest >> testIncrement [
	| c |
	c := Counter new.
	c count: 0 ; increment; increment.
	self assert: c count equals: 2
]

{ #category : #tests }
CounterTest >> testInitialize [
	"a new instance should have a zero count"
	self assert: Counter new count equals: 0

]

{ #category : #tests }
CounterTest >> testPrintOnWorksCorrectly [
	self
		assert: ((Counter startingAt: 6) increment) printString
		equals: 'a Counter with value: 7'

]
