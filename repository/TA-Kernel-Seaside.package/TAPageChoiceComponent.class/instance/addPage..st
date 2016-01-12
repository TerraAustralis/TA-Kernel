as yet unclassified
addPage: page
  page = self
    ifTrue: [ self error: 'Cannot add itself to page choice' ].
  self pages detect: [ :each | each = page ] ifNone: [ self pages add: page ].
  currentPage ifNil: [ currentPage := page ].
  ^ page