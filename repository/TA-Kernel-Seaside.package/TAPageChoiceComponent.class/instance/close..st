as yet unclassified
close: aPage
  aPage = currentPage
    ifTrue: [ currentPage := nil ].
  aPage = defaultPage
    ifTrue: [ defaultPage := nil ].
  self pages remove: aPage ifAbsent: [  ].
  self pages ifEmpty: [ self onLastPageClosedBlock value ]