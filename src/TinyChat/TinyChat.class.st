"
I manage the connections for a TinyChat client.
"
Class {
	#name : #TinyChat,
	#superclass : #Object,
	#instVars : [
		'url',
		'login',
		'exit',
		'messages',
		'console',
		'lastMessageIndex'
	],
	#category : #'TinyChat-client'
}

{ #category : #initialization }
TinyChat >> cmdLastMessageID [
	^ self command: '/messages/count'
]

{ #category : #initialization }
TinyChat >> cmdMessagesFromLastIndexToEnd [
	^ self command: '/messages' argument: lastMessageIndex 
]

{ #category : #initialization }
TinyChat >> cmdNewMessage [
	^ self command: '/messages/add'
]

{ #category : #initialization }
TinyChat >> command: aPath [
	^ '{1}{2}' format: { url . aPath  }.
]

{ #category : #initialization }
TinyChat >> command: aPath argument: anArgument [
	^ '{1}{2}/{3}' format: { url . aPath  . anArgument asString}.
]

{ #category : #initialization }
TinyChat >> initialize [
	super initialize.
	exit := false.
	lastMessageIndex := 0.
	messages := OrderedCollection new.
]

{ #category : #initialization }
TinyChat >> readLastMessageID [
	| id |
	id := (ZnClient new url: self cmdLastMessageID; get) asInteger.
	id = 0 ifTrue: [ id := 1 ].
	^ id.
]
