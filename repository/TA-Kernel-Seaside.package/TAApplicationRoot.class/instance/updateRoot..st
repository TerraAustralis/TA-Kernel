as yet unclassified
updateRoot: anHtmlRoot
  super updateRoot: anHtmlRoot.
  anHtmlRoot title: (self application preferenceAt: #'title').
  JQUiDevelopmentLibrary default updateRoot: anHtmlRoot.
  JQHumanityTheme default updateRoot: anHtmlRoot