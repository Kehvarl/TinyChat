"
I represent a message in Tiny Chat
"
Class {
	#name : #TCMessage,
	#superclass : #Object,
	#instVars : [
		'sender',
		'text',
		'separator'
	],
	#category : #TinyChat
}

{ #category : #accessing }
TCMessage >> sender [
	^ sender
]

{ #category : #accessing }
TCMessage >> sender: anObject [
	sender := anObject
]

{ #category : #accessing }
TCMessage >> text [
	^ text
]

{ #category : #accessing }
TCMessage >> text: anObject [
	text := anObject
]
