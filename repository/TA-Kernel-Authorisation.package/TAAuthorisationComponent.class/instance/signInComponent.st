components
signInComponent
  ^ self componentAt: #'signIn' ifAbsentPut: [ self buildSignInComponent ]