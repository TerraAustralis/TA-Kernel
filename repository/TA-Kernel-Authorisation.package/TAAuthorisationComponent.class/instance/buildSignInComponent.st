components
buildSignInComponent
  ^ (self person signInDescription asComponentOn: person)
    addValidatedForm: {(#'save' -> 'Sign In')}