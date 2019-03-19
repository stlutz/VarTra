accessing
publisher

	^ publisher ifNil: [publisher := self newPublisher]