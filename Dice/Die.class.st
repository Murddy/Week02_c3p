"
Class for a dice
"
Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'accessing' }
Die >> faces [
	^faces
]

{ #category : 'accessing' }
Die >> faces: aFace [
	faces := aFace 
]

{ #category : 'initialization' }
Die >> initialize [
	
	super initialize.
	faces := 6
]

{ #category : 'method' }
Die >> roll [ 

	^faces atRandom 
]
