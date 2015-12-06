seaside admin
install
  | application |
  application := WAAdmin
    register: self applicationClass
    at: self url
    in: WAAdmin defaultDispatcher.
  self configureNewApplication: application