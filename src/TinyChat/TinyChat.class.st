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
TinyChat >> initialize [
	super initialize.
	exit := false.
	lastMessageIndex := 0.
	messages := OrderedCollection new.
]
