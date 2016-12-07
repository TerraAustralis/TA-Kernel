accessing
fullName
  ^ String
    streamContents: [ :stream | 
      givenName ifNotNil: [ stream nextPutAll: givenName ].
      familyName
        ifNotNil: [ 
          stream
            nextPut: $ ;
            nextPutAll: givenName ] ]