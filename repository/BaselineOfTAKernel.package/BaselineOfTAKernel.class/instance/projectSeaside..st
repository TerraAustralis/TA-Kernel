baselines
projectSeaside: spec
  spec
    for: #'squeakCommon'
    do: [ 
      spec
        configuration: 'Seaside3'
        with: [ 
          spec
            repository:
                'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
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
            repository: 'github://JupiterSmalltalk/Seaside:v3.2.1/repository';
            loads:
                #('Core' 'Development' 'JQueryUI' 'Zinc' 'FastCGI' 'Email' 'JSON') ] ]