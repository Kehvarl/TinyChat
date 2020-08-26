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
TCMessageQueue >> initialize [ 
	super initialize.
	messages := OrderedCollection new.
]
