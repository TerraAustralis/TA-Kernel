rendering
renderAuthorisationOn: canvas
  canvas div
    script:
        (canvas jQuery new tabs
            active: self selectedActionId;
            onBeforeActivate:
                (canvas jQuery ajax
                    callbackTabs: [ :event | 
                      self halt.
                      selectedAction := event at: #'index' ]));
    with: [ 
          canvas
            unorderedList: [ 
              canvas
                listItem: [ 
                  canvas anchor
                    url:
                        (canvas jQuery ajax
                            html: [ :html | html render: self signInComponent ];
                            fullUrl);
                    with: 'Sign In' ].
              canvas
                listItem: [ 
                  canvas anchor
                    url:
                        (canvas jQuery ajax
                            html: [ :html | html render: self signUpComponent ];
                            fullUrl);
                    with: 'Sign Up' ] ] ]