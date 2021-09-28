Class {
	#name : #BookStorePresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'allBooks',
		'benchmarkButton',
		'stopButton'
	],
	#category : #MyBookstore
}

{ #category : #specs }
BookStorePresenter class >> defaultSpec [
^ SpBoxLayout newVertical  
 
 add: 'All books in bookstore' expand: false;
 add: #allBooks;
 addLast: (SpBoxLayout newHorizontal  
  				add: #benchmarkButton ;
  				add: #stopButton ; yourself);
 yourself.
]

{ #category : #accessing }
BookStorePresenter >> allBooks [ 
	^ allBooks
	
]

{ #category : #initialization }
BookStorePresenter >> benchmarkButton [
^ benchmarkButton 
]

{ #category : #initialization }
BookStorePresenter >> initializePresenters [
 
 allBooks := BookCollection new initialize createDemoBooks allBooksPrinting.
 
 "operations items: MBAbstract subclasses."

 benchmarkButton  := self newButton label: 'Do it';
											  color: Color green; 
											  yourself.

 stopButton := self newButton label: 'Stop'; 
									   color: Color yellow; 
										yourself.
]
