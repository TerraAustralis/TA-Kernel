accessing
password: password
  | salt |
  self
    at: #'salt' put: (salt := SecureRandom picker nextBytesNonZero: 64);
    at: #'password'
      put: (PasswordSaltAndStretch hashForPassword: password r: 1024 s: salt)