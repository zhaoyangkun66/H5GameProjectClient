let FishPrepModelCommand = require('FishPrepModelCommand');
let FishPrepControllerCommand = require('FishPrepControllerCommand');

module.exports = puremvc.define(
	{
		parent: puremvc.MacroCommand
	},
	{
		initializeMacroCommand: function () {
			this.addSubCommand(FishPrepModelCommand);
			this.addSubCommand(FishPrepControllerCommand);
		}
	},
	{
		NAME: 'FishStartUpCommand'
	});