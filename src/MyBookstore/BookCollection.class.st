Class {
	#name : #BookCollection,
	#superclass : #Object,
	#instVars : [
		'books'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #MyBookstore
}

{ #category : #initialization }
BookCollection class >> current [
	"singlton"
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : #initialization }
BookCollection class >> initialize [
	self reset
]

{ #category : #initialization }
BookCollection class >> reset [
	uniqueInstance := nil
]

{ #category : #removing }
BookCollection >> addBook: aBook [
	books add: aBook
]

{ #category : #'as yet unclassified' }
BookCollection >> allBooks [
	^ books
]

{ #category : #'as yet unclassified' }
BookCollection >> allBooksFromGenre: aGenre [
	^ books select: [ :b | b genre = aGenre ]
]

{ #category : #'as yet unclassified' }
BookCollection >> allBooksWithCost [
	^ books select: [ :b | b hasCost ]
]

{ #category : #'as yet unclassified' }
BookCollection >> allGenres [
	^ (self allBooks collect: [ :b | b genre ]) asSet
]

{ #category : #initialization }
BookCollection >> initialize [
	super initialize.
	books := OrderedCollection new.
]

{ #category : #removing }
BookCollection >> removeAllBooks [
	books := OrderedCollection new.
]

{ #category : #removing }
BookCollection >> size [
	^ books size
]
