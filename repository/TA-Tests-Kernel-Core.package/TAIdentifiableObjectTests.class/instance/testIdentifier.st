as yet unclassified
testIdentifier
  | identifiableObject id |
  identifiableObject := TAIdentifiableObject new.
  self assert: (id := identifiableObject identifier) notNil.
  self assert: (id isKindOf: UUID).
  self assert: identifiableObject id == id