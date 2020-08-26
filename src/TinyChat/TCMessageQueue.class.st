"
I hold the messages in a TinyChat
"
Class {
	#name : #TCMessageQueue,
	#superclass : #Object,
	#instVars : [
		'messages'
	],
	#category : #'TinyChat-server'
}

{ #category : #initialization }
TCMessageQueue >> add: aMessage [
	messages add: aMessage.
]

{ #category : #initialization }
TCMessageQueue >> initialize [ 
	super initialize.
	messages := OrderedCollection new.
]

{ #category : #initialization }
TCMessageQueue >> reset [ 
	messages removeAll.
	
]
