Class {
	#name : #BookCollectionTest,
	#superclass : #TestCase,
	#instVars : [
		'bookstore',
		'firstBook',
		'secondBook'
	],
	#category : #MyBookstore
}

{ #category : #running }
BookCollectionTest >> setUp [
	super setUp.
	bookstore := BookCollection current.
	bookstore removeAllBooks.
	firstBook := Book title: 'Ana Karenjina' author: 'Lav Tolstoj' year: 2018 publisher: 'Laguna'.
	firstBook genre: 'classic'; cost: 900.
	bookstore addBook: firstBook.
	secondBook := Book title: 'Evgenije Onjegin' author: 'Aleksandar Puskin' year: 2020 publisher: 'Vulkan'.

]

{ #category : #running }
BookCollectionTest >> tearDown [
	BookCollection  reset


]

{ #category : #running }
BookCollectionTest >> testAddBook [
	bookstore addBook: secondBook.
	self assert: bookstore size equals: 2.

]

{ #category : #running }
BookCollectionTest >> testAllBookWithSameGenre [
	self assert: (bookstore allBooksFromGenre: 'classic') size equals: 1

]

{ #category : #running }
BookCollectionTest >> testAllBooks [
	bookstore addBook: secondBook.
	self assert: bookstore allBooks size equals: 2.

]

{ #category : #running }
BookCollectionTest >> testAllBooksWithCost [
	bookstore addBook: secondBook.
	self assert: bookstore allBooksWithCost size equals: 1

]

{ #category : #running }
BookCollectionTest >> testAllBooksWithCostAndGenre [
	bookstore addBook: secondBook .
	secondBook cost: 700.
	self assert: (bookstore allBooksFromGenre: 'classic') size equals: 1.
	self assert: bookstore allBooksWithCost size equals: 2.

]

{ #category : #running }
BookCollectionTest >> testAllCategories [
	bookstore addBook: secondBook.
	secondBook genre: 'drama'.
	self assert: bookstore allGenres size equals: 2.

]

{ #category : #running }
BookCollectionTest >> testRemoveAllBooks [
	bookstore removeAllBooks.
	self assert: bookstore size equals: 0.

]

{ #category : #running }
BookCollectionTest >> testSize [
	self assert: bookstore size equals: 1.

]
