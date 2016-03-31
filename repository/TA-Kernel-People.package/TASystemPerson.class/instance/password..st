accessing
password: password
  "password needs to be stored in two ways to support basic authorisation from services that use crypt(), also a far more secure version for TA services"

  | salt |
  self
    at: #'salt' put: (salt := SecureRandom picker nextBytesNonZero: 64);
    at: #'password'
      put: (PasswordSaltAndStretch hashForPassword: password r: 1024 s: salt);
    at: #'passwordCrypt'
      put: (ZnUtils encodeBase64: userName asString , ':' , password asString)