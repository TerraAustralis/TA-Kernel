as yet unclassified
goToDefaultOn: announcement
  self announcer
    subscribe: announcement
    do: [ :ann | self currentPage: self defaultPage ]
    for: self