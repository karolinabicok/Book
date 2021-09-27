Class {
	#name : #BookTest,
	#superclass : #TestCase,
	#category : #MyBookstore
}

{ #category : #running }
BookTest >> testBookCreation [

	| b |
	b := Book title: 'Zlocin i kazna' author: 'F. M. Dostojevski' year: 2017 publisher: 'Laguna'.
	self assert: b title equals: 'Zlocin i kazna'.
	self assert: b author equals: 'F. M. Dostojevski'.
	self assert: b year equals: 2017.
	self assert: b publisher equals: 'Laguna'.
	

]

{ #category : #running }
BookTest >> testDiscountApplied [

	| b |
	b := Book new cost: 1000.
	b setDiscount20.
	self assert: b cost equals: 800.0.

]

{ #category : #running }
BookTest >> testLessThan500 [ 

	| b |
	b := Book new cost: 300.
	self assert: b lessThan500.

]
