Class {
	#name : #JavaSmaCCTryCatches,
	#superclass : #JavaSmaCCImporterTest,
	#instVars : [
		'tryCatchMethod',
		'tryCatchesMethod'
	],
	#category : #'FAST-Java-SmaCC-Importer-Tests'
}

{ #category : #running }
JavaSmaCCTryCatches >> setUpMethods [
	tryCatchesMethod := (self parseMethod: 'tryCatches') allFASTJavaMethodEntity first
]

{ #category : #running }
JavaSmaCCTryCatches >> testTryCatchCatchBodyType [
	self assert: tryCatchesMethod statements second catches first body class equals: FASTStatementBlock
]

{ #category : #running }
JavaSmaCCTryCatches >> testTryCatchCatchNumber [
	self assert: tryCatchesMethod statements second catches size equals: 2.

]

{ #category : #running }
JavaSmaCCTryCatches >> testTryCatchCatchParametersName [
	self assert: tryCatchesMethod statements second catches first parameters first name equals: 'e'
]

{ #category : #running }
JavaSmaCCTryCatches >> testTryCatchCatchParametersType [
	self assert: tryCatchesMethod statements second catches first parameters first class equals: FASTNamedEntity
]

{ #category : #running }
JavaSmaCCTryCatches >> testTryCatchTryPartType [
	self assert: tryCatchesMethod statements second try class equals: FASTJavaTryPartStatement
]

{ #category : #running }
JavaSmaCCTryCatches >> testTryCatchType [
	self assert: tryCatchesMethod statements second class equals: FASTJavaTryCatchStatement
]