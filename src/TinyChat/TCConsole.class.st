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

{ #category : #specs }
TCConsole class >> defaultSpec [ 
	<spec: #default>
	
	^ SpecLayout composed 
	newColumn: [ :c |
		c add: #list; add: #input height: 30 ]; yourself.
]

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
