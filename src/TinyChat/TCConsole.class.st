"
A display console for TinyChat
"
Class {
	#name : #TCConsole,
	#superclass : #Object,
	#instVars : [
		'chat',
		'list',
		'input'
	],
	#category : #'TinyChat-client'
}

{ #category : #accessing }
TCConsole >> chat: anObject [
	chat := anObject
]

{ #category : #accessing }
TCConsole >> input [
	^ input
]

{ #category : #accessing }
TCConsole >> list [
	^ list
]

{ #category : #accessing }
TCConsole >> title [ 
	^ 'TinyChat'.
]
