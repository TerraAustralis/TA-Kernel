as yet unclassified
personComponent
  ^ self componentAt: #'person' ifAbsentPut: [ self buildPersonComponent ]