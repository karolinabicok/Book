Class {
	#name : #BookStoreConfiguration,
	#superclass : #SpApplicationConfiguration,
	#category : #MyBookstore
}

{ #category : #styling }
BookStoreConfiguration >> styleSheet [ 
^ super styleSheet, (SpStyleSTONReader fromString: '
	.application [
		.label [
			.title [
				Font { #name: ""Source Code Pro"", #size: 24 },
				Draw { #color: #red }
			]
		]	
	]')
]
