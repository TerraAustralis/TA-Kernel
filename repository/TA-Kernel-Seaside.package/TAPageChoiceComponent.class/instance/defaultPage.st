as yet unclassified
defaultPage
  defaultPage
    ifNil: [ 
      self pages ifEmpty: [ ^ nil ].
      ^ self pages first ].
  ^ defaultPage