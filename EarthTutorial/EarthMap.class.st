"
the earth map

"
Class {
	#name : 'EarthMap',
	#superclass : 'Object',
	#instVars : [
		'countries'
	],
	#category : 'EarthTutorial',
	#package : 'EarthTutorial'
}

{ #category : 'method' }
EarthMap >> importCountryFromXMLNode: aXMLElement [

	countries add: (EarthMapCountry new fromXML: aXMLElement)
]

{ #category : 'initialization' }
EarthMap >> initialize [

	super initialize.
	countries := OrderedCollection new
]

{ #category : 'method' }
EarthMap >> openPopulatedCanvas [
	
	self populatedCanvas open
]

{ #category : 'method' }
EarthMap >> populatedCanvas [

	^ RSCanvas new
		addAll: (countries collect: [ :country | country asRSShape ]);
		@ RSCanvasController;
		yourself
]

{ #category : 'method' }
EarthMap >> xmlTreeFromFile: aFileName [

	^ aFileName asFileReference readStreamDo: [ :stream |
		(XMLDOMParser parse: stream) document ]
]
