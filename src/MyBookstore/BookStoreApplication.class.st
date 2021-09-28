Class {
	#name : #BookStoreApplication,
	#superclass : #SpApplication,
	#category : #MyBookstore
}

{ #category : #running }
BookStoreApplication >> start [
^ (self new: BookStorePresenter) openWithSpec.
]
