seaside admin
configureNewApplication: application
  | filter |
  "Configure a typical set of application defaults"
  WAAdmin configureNewApplication: application.
  filter := application filters detect: [ :filter | filter isExceptionFilter ].
  filter configuration at: #'exceptionHandler' put: self exceptionHandlerClass.
  self configurationClasses
    do: [ :configurationClass | application configuration addParent: configurationClass instance ].
  self libraryClasses do: [ :lib | application addLibrary: lib ].
  application
    preferenceAt: #'rootClass' put: self;
    preferenceAt: #'sessionClass' put: self sessionClass.
  application preferenceAt: #'title' put: self url.
  application preferenceAt: #'smtpServer' put: self seasideEmailSMTPHost.
  application preferenceAt: #'smtpUsername' put: self seasideEmailAccount.
  application preferenceAt: #'smtpPassword' put: self seasideEmailPassword