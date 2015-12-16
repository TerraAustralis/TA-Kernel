components
buildSignUpComponent
  ^ (self person signUpDescription asComponentOn: person)
    addValidatedForm: {(#'save' -> 'Sign Up')}