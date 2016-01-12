as yet unclassified
renderCurrentPageOn: canvas
  self currentPage
    ifNil: [ self renderErrorOn: canvas ]
    ifNotNil: [ canvas render: self currentPage ]