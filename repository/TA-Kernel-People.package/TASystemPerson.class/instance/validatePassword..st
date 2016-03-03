accessing
validatePassword: password
  ^ (self at: #'password')
    =
      (PasswordSaltAndStretch hashForPassword: password r: 1024 s: (self at: #'salt'))