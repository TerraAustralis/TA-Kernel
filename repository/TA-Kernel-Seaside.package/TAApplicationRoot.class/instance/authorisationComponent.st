as yet unclassified
authorisationComponent
  ^ self
    componentAt: #'authorisation'
    ifAbsentPut: [ TAAuthorisationComponent new ]