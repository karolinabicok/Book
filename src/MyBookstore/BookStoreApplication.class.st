Class {
	#name : #BookStoreApplication,
	#superclass : #SpApplication,
	#category : #MyBookstore
}

{ #category : #initialization }
BookStoreApplication >> initialize [ 
self 
		useBackend: #Morphic 
		with: BookStoreConfiguration  new.
]

{ #category : #running }
BookStoreApplication >> start [
 ^ (self new: BookStorePresenter) openWithSpec.
]
