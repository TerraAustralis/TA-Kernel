accessing
person
  ^ person ifNil: [ person := TASystemPerson unauthorisedPerson ]