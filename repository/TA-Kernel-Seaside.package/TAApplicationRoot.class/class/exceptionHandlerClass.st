seaside config
exceptionHandlerClass
  ^ SpEnvironment isGemStone
    ifTrue: [ WARemoteDebuggingWalkbackErrorHandler ]
    ifFalse: [ WAWalkbackErrorHandler ]