Class {
	#name : #BookStorePresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'list1'
	],
	#category : #MyBookstore
}

{ #category : #specs }
BookStorePresenter class >> defaultSpec [ 
^ SpBoxLayout newVertical
	add: (SpBoxLayout newHorizontal
				add:
					(SpBoxLayout newVertical
						add: 'Knjige' withConstraints: [ :constraints | constraints height: self labelHeight ];
						add: #list1;
						yourself));
	yourself
]

{ #category : #initialization }
BookStorePresenter >> initializePresenter [
| kolekcija |

kolekcija := BookCollection new.
kolekcija createDemoBooks.

list1 := self newList.

list1
		items: kolekcija allBooksPrinting.

]

{ #category : #initialization }
BookStorePresenter >> initializeWindow: aWindowPresenter [ 
   aWindowPresenter 
	title: 'Kolekcija knjiga';
	initialExtent: 500@400
]

{ #category : #accessing }
BookStorePresenter >> list1 [ 
^ list1
]
