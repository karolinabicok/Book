Class {
	#name : #BookCollection,
	#superclass : #Object,
	#instVars : [
		'books'
	],
	#category : #MyBookstore
}

{ #category : #initialization }
BookCollection >> initialize [
	super initialize.
	books := OrderedCollection new.
]
