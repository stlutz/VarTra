node generation
notificationNode: encoder

	^ notificationNode ifNil: [
		notificationNode := self generateNotificationNode: encoder]