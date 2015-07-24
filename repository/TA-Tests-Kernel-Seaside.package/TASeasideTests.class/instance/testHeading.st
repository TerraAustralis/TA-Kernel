Testing
testHeading
	self assert: (driver findElementByXPath: '//h1') getText = 'Terra Australis'