*GitHubcello
spotterGhBaselinesFor: aStep
   <spotterOrder: 0>
	self flag: #specialFilter.
	^ aStep listProcessor
		title: 'GitHub Baselines';
		itemName: #name;
		filter: GTNullFilter item: [ :filter :context |
			(GitHubcelloGrabber fromUrl: context textTrimmed) loadScripts do: [ :s |
				filter value: s ] ];
		itemIcon: [ Smalltalk ui icons iconNamed: #catalog ];
		actLogic: [ :item | 
				aStep exit.
				(UIManager default confirm: 'Would you like to load ', item name, ' baseline?') 
					 ifTrue: [ item load.
								  UIManager inform: item name, ' installed'. ]];
		wantsToDisplayOnEmptyQuery: false