Class {
	#name : #Book,
	#superclass : #Object,
	#instVars : [
		'title',
		'author',
		'year',
		'publisher',
		'genre',
		'cost'
	],
	#category : #MyBookstore
}

{ #category : #'as yet unclassified' }
Book class >> title: aTitle author: anAuthor year: aYear publisher: aPublisher [
^ self new
	title: aTitle;
	author: anAuthor;
	year: aYear;
	publisher: aPublisher;
	yourself  

]

{ #category : #accessing }
Book >> author [ 
^ author
]

{ #category : #accessing }
Book >> author: aString [
	author := aString
]

{ #category : #accessing }
Book >> cost [
^ cost
]

{ #category : #accessing }
Book >> cost: aDouble [
	cost := aDouble
]

{ #category : #accessing }
Book >> genre [
^ genre
]

{ #category : #accessing }
Book >> genre: aGenre [
	genre := aGenre
]

{ #category : #accessing }
Book >> lessThan500 [
^ cost < 500
]

{ #category : #accessing }
Book >> publisher [
^ publisher
]

{ #category : #accessing }
Book >> publisher: aString [
	publisher := aString
]

{ #category : #initialization }
Book >> setDiscount20 [
	cost := cost - (cost * 0.2)
]

{ #category : #accessing }
Book >> title [ 
^ title
]

{ #category : #accessing }
Book >> title: aString [
	title := aString
]

{ #category : #accessing }
Book >> year [ 
^ year
]
