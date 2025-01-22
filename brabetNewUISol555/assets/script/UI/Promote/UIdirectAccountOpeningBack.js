var BaseForm = require("BaseForm")
cc.Class({
    extends: BaseForm.default,

    properties: {

    },
    OnCreateInit() {
        this.account = cc.find("bg/account/account", this.node).getComponent(cc.Label)
        this.password = cc.find("bg/password/password", this.node).getComponent(cc.Label)
    },
    OnShow() {
        this.data = arguments[0]
        this.account.string = this.data.account
        this.password.string = this.data.password
    },
    OnClick() {
        app.NativeMgr().copyToClipBoard("Conta: " + this.data.account + "  Senha: " + this.data.password)
    }
});
