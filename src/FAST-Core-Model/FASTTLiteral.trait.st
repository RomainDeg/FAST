"
A literal node.

Contains a value for the literal.

FLAG: should refactor some literals to core-model
    e.g.: character, int, float, string, boolean 

## Relations
======================

### Parents
- Relation: #argumentOwner Type: #FASTTWithArguments Opposite: #arguments Comment: my owner
- Relation: #expressionStatementOwner Type: #FASTTExpressionStatement Opposite: #expression Comment: The expression statement that own me (if it's the case
- Relation: #returnOwner Type: #FASTTReturnStatement Opposite: #expression Comment: The return statement that own the expression (if it's the case)
### Other
- Relation: #assignedIn Type: #FASTTAssignment Opposite: #expression Comment: Optional assignment where this expression is used

## Properties
======================

- Named: #endPos Type: Number
- Named: #primitiveValue Type: String Comment: The literal itself as found in the source code. We use primitiveValue in order to override value from Object
- Named: #startPos Type: Number

"
Trait {
	#name : #FASTTLiteral,
	#instVars : [
		'#primitiveValue => FMProperty'
	],
	#traits : 'FASTTExpression',
	#classTraits : 'FASTTExpression classTrait',
	#category : #'FAST-Core-Model-Traits'
}

{ #category : #meta }
FASTTLiteral classSide >> annotation [

	<FMClass: #TLiteral super: #Object>
	<package: #'FAST-Core-Model'>
	<generated>
	^ self
]

{ #category : #accessing }
FASTTLiteral >> primitiveValue [

	<FMProperty: #primitiveValue type: #String>
	<generated>
	<FMComment: 'The literal itself as found in the source code. We use primitiveValue in order to override value from Object'>
	^ primitiveValue
]

{ #category : #accessing }
FASTTLiteral >> primitiveValue: anObject [
	<generated>
	primitiveValue := anObject
]
