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
BookCollection >> allBooksPrinting [
	^ books collect: [ :b | b printBook ] 
]

{ #category : #'as yet unclassified' }
BookCollection >> allBooksWithCost [
	^ books select: [ :b | b hasCost ]
]

{ #category : #'as yet unclassified' }
BookCollection >> allGenres [
	^ (self allBooks collect: [ :b | b genre ]) asSet
]

{ #category : #'as yet unclassified' }
BookCollection >> createDemoBooks [
	^ self
		addBook: (Book new title: 'Igra prestola'; author: 'Dzordz R. R. Martin'; year: 2015; publisher: 'Laguna';
			cost: 1000;
			genre: 'fantasy') yourself;
		addBook: (Book new title: 'Una'; author: 'Momo Kapor'; year: 2018; publisher: 'Dereta';
			cost: 800;
			genre: 'romance') yourself;
		addBook: (Book new title: 'Sapijens: Kratka istorija covecanstva'; author: 'Juval Noa Harari';
			year:2020;
			publisher: 'Laguna';
			cost: 1300;
			genre: 'popular science') yourself;
		addBook: (Book new title: 'Na Drini cuprija'; author: 'Ivo Andric'; year: 2018; publisher: 'Vulkan'; 
			cost: 800;
			genre: 'history') yourself;
		addBook: (Book new title: 'Dervis i smrt'; author: 'Mesa Selimovic'; year: 2021; publisher: 'Dereta'; 
			cost: 800;
			genre: 'classic') yourself.

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
BookCollection >> removeBook: aBook [
	books remove: aBook
]

{ #category : #removing }
BookCollection >> size [
	^ books size
]
