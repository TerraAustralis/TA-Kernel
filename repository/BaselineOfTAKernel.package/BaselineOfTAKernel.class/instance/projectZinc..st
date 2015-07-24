baselines
projectZinc: spec
  spec
    for: #'squeakCommon'
    do: [ 
      spec
        project: 'ZincHTTPComponents'
        with: [ 
          spec
            versionString: #'stable';
            className: 'ConfigurationOfZincHTTPComponents';
            repository: 'http://mc.stfx.eu/ZincHTTPComponents';
            loads: #('Core' 'WebSocket') ] ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'ZincHTTPComponents'
        with: [ 
          spec
            repository: 'filetree:///opt/git/GsDevKit/zinc/repository';
            loads: #('Core' 'WebSocket') ] ]