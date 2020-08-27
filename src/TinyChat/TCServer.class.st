"
I serve chat content.
"
Class {
	#name : #TCServer,
	#superclass : #Object,
	#instVars : [
		'teapotServer',
		'messagesQueue'
	],
	#category : #'TinyChat-server'
}

{ #category : #initialization }
TCServer >> initialize [ 
	super initialize.
	messagesQueue := TCMessageQueue new.
]

{ #category : #initialization }
TCServer >> initializePort: anInteger [
	teapotServer := Teapot configure: { 
		#defaultOutput -> #text.
		#port -> anInteger.
		#debugMode -> true }.
	teapotServer start.
]

{ #category : #initialization }
TCServer >> registerErrorHandlers [
	teapotServer 
		exception: KeyNotFound -> (TeaResponse notFound body: 'No such message')
]

{ #category : #initialization }
TCServer >> registerRoutes [
	teapotServer
		GET: '/messages/count' -> (Send message: #messageCount to: self);
		GET: '/messages/<id:IsInteger>' -> (Send message: #messagesFrom: to: self);
		POST: '/messages/add' -> (Send message: #addMEssageL to: self)
]
