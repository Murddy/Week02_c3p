"
Class for the countries on earth
"
Class {
	#name : 'EarthMapCountry',
	#superclass : 'Object',
	#instVars : [
		'svgPath',
		'name',
		'code'
	],
	#category : 'Flags',
	#package : 'Flags'
}

{ #category : 'converting' }
EarthMapCountry >> asRSShape [
	" a method that returns the Roassal SVG shape of a country"
	
	^ RSSVGPath new svgPath: svgPath
]

{ #category : 'accessing' }
EarthMapCountry >> code [ 
	^code 
]

{ #category : 'accessing' }
EarthMapCountry >> code: aCode [
	code := aCode 
]

{ #category : 'instance creation' }
EarthMapCountry >> fromXML: aXMLElement [
	"a method that creates an instance of EarthMapCountry from an element"
	
	svgPath := aXMLElement attributeAt: 'd'.
	name := aXMLElement attributeAt: 'title'.
	code := aXMLElement attributeAt: 'id'.
]

{ #category : 'accessing' }
EarthMapCountry >> inspectorShape [
	<inspectorPresentationOrder: 0 title: 'Shape'>
	| canvas |
	canvas := RSCanvas new.
	canvas add: self asRSShape.
	canvas @ RSCanvasController.
	^ SpRoassalInspectorPresenter new canvas: canvas; yourself
]

{ #category : 'accessing' }
EarthMapCountry >> name [ 
	^name 
	
]

{ #category : 'accessing' }
EarthMapCountry >> name: aName [
	name := aName 
]

{ #category : 'printing' }
EarthMapCountry >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: ' ';
		nextPutAll: name
]

{ #category : 'accessing' }
EarthMapCountry >> svgPath [ 
	^svgPath 
]

{ #category : 'accessing' }
EarthMapCountry >> svgPath: aPath [
	svgPath := aPath 
]
