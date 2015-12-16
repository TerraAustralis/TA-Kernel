as yet unclassified
renderContentOn: canvas
  canvas heading
    level1;
    with: (self application preferenceAt: #'title').
  self renderAuthorisationOn: canvas