as yet unclassified
describeOn: config
  <lint: 'Overrides super method without calling it' rationale:
    'This is a should override' author: 'TF'>
  (config boolean: #'sendRegistrationConfirmationEmail')
    group: #'authorisation';
    default: false;
    comment: 'Confirm registrations via email.'.
  (config integer: #'confirmationTimeoutMinutes')
    group: #'authorisation';
    default: 10;
    comment:
        'Minutes to wait after sending registration and password reset emails'.
  (config boolean: #'useRecaptchaInRegistrationForm')
    group: #'authorisation';
    default: false;
    comment: 'Protect registration form against spam with reCAPTCHA'.
  (config boolean: #'confirmEmailChangeViaEmail')
    group: #'authorisation';
    default: false;
    comment: 'Confirm email address changes by sending email to the new address'.
  (config boolean: #'confirmAccountChangesViaEmail')
    group: #'authorisation';
    default: false;
    comment:
        'Confirm all account changes by sending email to the (possibly new) address'.
  (config boolean: #'allowEmptyPasswords')
    group: #'authorisation';
    default: false;
    comment: 'Allow empty passwords'.
  (config boolean: #'allowUsernameChange')
    group: #'authorisation';
    default: false;
    comment: 'Allow users to change their username'.
  (config boolean: #'allowRememberUsername')
    group: #'authorisation';
    default: false;
    comment: 'Allow users to remember their username in a cookie'.
  (config boolean: #'allowAutomaticAuthorisation')
    group: #'authorisation';
    default: false;
    comment: 'Allow users to remember their username and password in a cookie'.
  (config integer: #'UsernamePasswordRememberDays')
    group: #'authorisation';
    default: 7;
    comment: 'Expiration period for username and password cookies'