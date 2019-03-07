Class {
	#name : #PCMetaclass,
	#superclass : #PCBehavior,
	#instVars : [
		'soleInstance'
	],
	#category : 'Kernel-Classes'
}

{ #category : #'as yet unclassified' }
PCMetaclass >> initMethodDict: newMethodDict [
	"Initialize myself with the given method dictionary. Create but do not initialize my soleInstance."

	superclass := PCClass.
	methodDict := newMethodDict.
	format := PCClass format.	"all metaclasses have the same format as PClass"
	soleInstance := self basicNew
]

{ #category : #'as yet unclassified' }
PCMetaclass >> isMeta [
	^ true
]

{ #category : #'as yet unclassified' }
PCMetaclass >> name [
	"Answer my name, either 'Metaclass' or the name of my class followed by ' class'."

	soleInstance
		ifNil: [ ^ 'Metaclass' ]
		ifNotNil: [ ^ soleInstance name , ' class' ]
]

{ #category : #'as yet unclassified' }
PCMetaclass >> new [
	"Each metaclass should have exactly one instance."

	self cannotInstantiate
]

{ #category : #'as yet unclassified' }
PCMetaclass >> soleInstance: aClass [
	soleInstance := aClass
]

{ #category : #'as yet unclassified' }
PCMetaclass >> theNonMetaClass [
	"Answer my only instance."

	^ soleInstance
]
