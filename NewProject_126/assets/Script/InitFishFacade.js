
cc.Class({
	extends : cc.Component,

	properties : {

	},
	
	onLoad : function() {
		let appFacade = require('FishFacade');
		appFacade.startup();
	}
});