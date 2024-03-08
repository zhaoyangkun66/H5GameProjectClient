
let FishStartUpCommand = require('FishStartUpCommand');

let FishFacade = puremvc.define(
    {
        parent: puremvc.Facade,
        constructor: function (multitonKey) {
            puremvc.Facade.call(this, multitonKey);
            this.isInit = false;
        }
    },
    {
        initializeModel: function () {
            puremvc.Facade.prototype.initializeModel.call(this);
        },

        initializeView: function () {
            puremvc.Facade.prototype.initializeView.call(this);
        },

        initializeController: function () {
            puremvc.Facade.prototype.initializeController.call(this);
            this.registerCommand(FishConstants.START_UP, FishStartUpCommand);
        },

        startup: function () {
            if (!this.isInit) {
                this.sendNotification(FishConstants.START_UP);
                this.isInit = true;
            }
        }
    },
    {
        getInstance: function (multitonKey) {
            let instanceMap = puremvc.Facade.instanceMap;
            let instance = instanceMap[multitonKey];
            if (instance) {
                return instance;
            } else {
                instance = instanceMap[multitonKey] = new FishFacade(multitonKey);
                return instance;
            }
        },

        NAME: 'FishFacade'
    });

module.exports = FishFacade.getInstance('FishFacade');
