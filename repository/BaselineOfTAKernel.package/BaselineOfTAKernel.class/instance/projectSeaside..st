baselines
projectSeaside: spec
  spec
    for: #'squeakCommon'
    do: [ 
      spec
        configuration: 'Seaside3'
        with: [ 
          spec
            repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
            version: '3.1.3';
            loads:
                #('Core' 'Development' 'JQueryUI' 'Gettext' 'Zinc' 'Email' 'JSON') ] ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'Seaside3'
        with: [ 
          spec
            repository: 'filetree:///opt/git/GsDevKit/Seaside31/repository';
            loads:
                #('Core' 'Development' 'JQueryUI' 'Gettext' 'Zinc' 'FastCGI' 'Email' 'JSON') ] ]