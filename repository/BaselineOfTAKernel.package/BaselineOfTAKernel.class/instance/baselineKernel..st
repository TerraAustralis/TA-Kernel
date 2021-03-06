baselines
baselineKernel: spec
  spec
    for: #'common'
    do: [ 
      spec
        package: 'TA-Kernel-Core' with: [ spec requires: #('Magritte3') ];
        package: 'TA-Kernel-People'
          with: [ spec requires: #('TA-Kernel-Core') ];
        package: 'TA-Kernel-Seaside'
          with: [ spec requires: #('TA-Kernel-Core' 'ZincHTTPComponents' 'Seaside3') ];
        package: 'TA-Kernel-Authorisation'
          with: [ spec requires: #('TA-Kernel-Seaside') ].
      spec
        package: 'TA-Tests-Kernel-Core'
          with: [ spec requires: #('TA-Kernel-Core') ];
        package: 'TA-Tests-Kernel-People'
          with: [ spec requires: #('TA-Kernel-People') ];
        package: 'TA-Tests-Kernel-Seaside'
          with: [ spec requires: #('TA-Kernel-Seaside' 'Parasol') ].
      spec
        group: 'default' with: #('development');
        group: 'development'
          with:
            #('Kernel Core' 'Kernel Seaside' 'Kernel Tests' 'Kernel Tests Seaside');
        group: 'deploy' with: #('Kernel Core' 'Kernel Seaside');
        group: 'Kernel Core' with: #('TA-Kernel-Core' 'TA-Kernel-People');
        group: 'Kernel Seaside'
          with: #('TA-Kernel-Seaside' 'TA-Kernel-Authorisation');
        group: 'Kernel Tests'
          with: #('TA-Tests-Kernel-Core' 'TA-Tests-Kernel-People');
        group: 'Kernel Tests Seaside' with: #('TA-Tests-Kernel-Seaside') ]