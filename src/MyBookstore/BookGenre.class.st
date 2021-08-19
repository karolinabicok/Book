Class {
	#name : #BookGenre,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #MyBookstore
}

{ #category : #initialization }
BookGenre class >> action [
^ self new name: #action.
]

{ #category : #initialization }
BookGenre class >> biography [
^ self new name: #biography.
]

{ #category : #initialization }
BookGenre class >> classic [ 
^ self new name: #classic.
]

{ #category : #initialization }
BookGenre class >> comedy [
^ self new name: #comedy.
]

{ #category : #initialization }
BookGenre class >> crime [
^ self new name: #crime.
]

{ #category : #initialization }
BookGenre class >> drama [
^ self new name: #drama.
]

{ #category : #initialization }
BookGenre class >> education [
^ self new name: #education.
]

{ #category : #initialization }
BookGenre class >> fantasy [
^ self new name: #fantasy.
]

{ #category : #initialization }
BookGenre class >> history [ 
^ self new name: #history.
]

{ #category : #initialization }
BookGenre class >> horror [
^ self new name: #horror.
]

{ #category : #initialization }
BookGenre class >> philosophy [
^ self new name: #philosophy.
]

{ #category : #initialization }
BookGenre class >> poetry [
^ self new name: #poetry.
]

{ #category : #initialization }
BookGenre class >> psychology [
^ self new name: #psychology .
]

{ #category : #initialization }
BookGenre class >> romance [
^ self new name: #romance.
]

{ #category : #initialization }
BookGenre class >> sciFi [
^ self new name: #scienceFiction.
]

{ #category : #initialization }
BookGenre class >> thriller [
^ self new name: #thriller.
]
