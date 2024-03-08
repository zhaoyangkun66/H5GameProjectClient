

module.exports = puremvc.define({
	parent : puremvc.SimpleCommand
},
{
	execute : function() {


		this.facade.registerProxy();
	}
},
{
	NAME : 'FishPrepModelCommand'
});