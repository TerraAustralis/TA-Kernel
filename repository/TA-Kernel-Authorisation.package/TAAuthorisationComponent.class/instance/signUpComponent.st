components
signUpComponent
  ^ self componentAt: #'signUp' ifAbsentPut: [ self buildSignUpComponent ]