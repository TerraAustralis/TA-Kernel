seaside admin
configureNewApplication: application
  | filter |
  "Configure application defaults"
  WAAdmin configureNewApplication: application.
  application
    preferenceAt: #'rootClass' put: self;
    preferenceAt: #'sessionClass' put: self sessionClass.
  filter := application filters detect: [ :filter | filter isExceptionFilter ].
  filter configuration at: #'exceptionHandler' put: self exceptionHandlerClass.
  application configuration addParent: self configurationClass instance.
  application preferenceAt: #'title' put: self url.
  application
    addLibrary: JQ2DevelopmentLibrary;
    addLibrary: JQUiDevelopmentLibrary;
    addLibrary: TBSDevelopmentLibrary;
    addLibrary: TBSJasnyDevelopmentLibrary.
  application configuration addParent: WAEmailConfiguration instance.
  application preferenceAt: #'smtpServer' put: 'mail.ta-nation.net'.
  application preferenceAt: #'smtpUsername' put: 'support@ta-nation.net'.
  application preferenceAt: #'smtpPassword' put: 'G6quXAGMwbxNcpLG4B'