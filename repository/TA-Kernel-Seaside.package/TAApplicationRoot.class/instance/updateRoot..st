as yet unclassified
updateRoot: anHtmlRoot
  super updateRoot: anHtmlRoot.
  anHtmlRoot title: (self application preferenceAt: #'title')