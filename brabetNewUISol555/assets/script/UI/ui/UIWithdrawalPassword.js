var BaseForm = require("BaseForm");
var GameEventDefine = require("GameEventDefine")
cc.Class({
    extends: BaseForm.default,

    properties: {

    },
    OnCreateInit() {
        this.RegEvent(GameEventDefine.GameEventDefine.modifywithdrawpass, this.onModifywithdrawpass)
        this.editbox_Password1 = cc.find("bg/NewLayout/editbox_Password1", this.node).getComponent(cc.EditBox)
        this.editbox_Password2 = cc.find("bg/NewLayout/editbox_Password2", this.node).getComponent(cc.EditBox)
        this.tipNode1 = cc.find("bg/NewLayout/tipNode1", this.node)
        this.tipNode2 = cc.find("bg/NewLayout/tipNode2", this.node)
        this.tipNode1.active = false
        this.tipNode2.active = false

    },
    OnShow() {
        // "Senha incorreta, digite novamente!"//密码错误，请重新输入！
        // A senha de saque não pode ficar em branco
        //app.UserManager().GetUserWallet()
        this.editbox_Password1.string = ""
        this.editbox_Password2.string = ""
    },
    onModifywithdrawpass() {
        app.UserManager().GetUserWallet().isWithdrawalPassword = 1
        this.CloseForm()
    },
    onPassword1Changed() {
        let Password1 = this.editbox_Password1.string.replace(/\D/g, '')
        this.editbox_Password1.string = Password1
    },
    onPassword1End() {
        let Password1 = this.editbox_Password1.string.replace(/\D/g, '')
        this.editbox_Password1.string = Password1
        if (Password1.length == 0) {
            this.tipNode1.active = true
            this.tipNode1.getChildByName("lb_tip").getComponent(cc.Label).string = "A senha de saque nao pode ficar em branco"//提款密码不能为空。
            return false
        }
        else if (Password1.length < 6) {
            this.tipNode1.active = true
            this.tipNode1.getChildByName("lb_tip").getComponent(cc.Label).string = "6 números puros"//6 个纯数字
            return false
        }
        else {
            let isConsecutiveR = false
            const sameDigitsRegex = /(\d)\1{5,}/;
            if (sameDigitsRegex.test(Password1)) {
                isConsecutiveR = true
            }
            // 检查是否有6个连续递增或递减的数字
            for (let i = 0; i <= Password1.length - 6; i++) {
                let isConsecutive = true;
                for (let j = 1; j < 6; j++) {
                    // 检查递增
                    if (Password1[i + j] !== String.fromCharCode(Password1.charCodeAt(i + j - 1) + 1)) {
                        // 如果不是递增，则检查递减
                        // if (Password1[i + j] !== String.fromCharCode(Password1.charCodeAt(i + j - 1) - 1)) {
                        isConsecutive = false;
                        break;
                        // }
                    }
                }
                if (isConsecutive) {
                    isConsecutiveR = true
                }
            }
            if (isConsecutiveR) {
                this.tipNode1.active = true
                this.tipNode1.getChildByName("lb_tip").getComponent(cc.Label).string = "Não pode ser 6 mesmos ou números contínuos"//不能是6个相同或连续的数字
                return false

            }
            else {
                this.tipNode1.active = false
                return true
            }
        }
    },
    onPassword2Changed() {
        let Password2 = this.editbox_Password2.string.replace(/\D/g, '')
        this.editbox_Password2.string = Password2
    },
    onPassword2End() {
        let Password2 = this.editbox_Password2.string.replace(/\D/g, '')
        this.editbox_Password2.string = Password2
        if (Password2.length == 0) {
            this.tipNode2.active = true
            this.tipNode2.getChildByName("lb_tip").getComponent(cc.Label).string = "A senha de saque nao pode ficar em branco"//提款密码不能为空。
            return false
        }
        else if (Password2.length < 6) {
            this.tipNode2.active = true
            this.tipNode2.getChildByName("lb_tip").getComponent(cc.Label).string = "6 números puros"//6 个纯数字
            return false
        }
        else {
            let isConsecutiveR = false
            const sameDigitsRegex = /(\d)\1{5,}/;
            if (sameDigitsRegex.test(Password2)) {
                isConsecutiveR = true
            }
            // 检查是否有6个连续递增或递减的数字
            for (let i = 0; i <= Password2.length - 6; i++) {
                let isConsecutive = true;
                for (let j = 1; j < 6; j++) {
                    // 检查递增
                    if (Password2[i + j] !== String.fromCharCode(Password2.charCodeAt(i + j - 1) + 1)) {
                        // 如果不是递增，则检查递减
                        //  if (Password2[i + j] !== String.fromCharCode(Password2.charCodeAt(i + j - 1) - 1)) {
                        isConsecutive = false;
                        break;
                        //   }
                    }
                }
                if (isConsecutive) {
                    isConsecutiveR = true
                }
            }
            if (isConsecutiveR) {
                this.tipNode2.active = true
                this.tipNode2.getChildByName("lb_tip").getComponent(cc.Label).string = "Não pode ser 6 mesmos ou números contínuos"//不能是6个相同或连续的数字
                return false

            }
            let Password1 = this.editbox_Password1.string.replace(/\D/g, '')
            if (Password1 != Password2) {
                this.tipNode2.active = true
                this.tipNode2.getChildByName("lb_tip").getComponent(cc.Label).string = "Senha incorreta, digite novamente!"//密码错误，请重新输入！
                return false
            }
            else {
                this.tipNode2.active = false
                return true
            }
        }
    },
    renderEye(e) {
        this.editbox_Password1.inputFlag = e ? cc.EditBox.InputFlag.DEFAULT : cc.EditBox.InputFlag.PASSWORD
        cc.find("bg/NewLayout/lb_node1/btn_eye", this.node).active = !e
        cc.find("bg/NewLayout/lb_node1/btn_eye_close", this.node).active = e
    },
    renderEye2(e) {
        this.editbox_Password2.inputFlag = e ? cc.EditBox.InputFlag.DEFAULT : cc.EditBox.InputFlag.PASSWORD
        cc.find("bg/NewLayout/lb_node2/btn_eye2", this.node).active = !e
        cc.find("bg/NewLayout/lb_node2/btn_eye_close2", this.node).active = e
    },
    OnClick(e) {
        if ("btnSure" == e) {
            if (this.onPassword1End() && this.onPassword2End()) {
                let Password = this.editbox_Password1.string
                app.UserManager().RequstModifywithdrawpass(Password)
            }
        }
        else if ("btn_eye" == e) {
            this.renderEye(true);
        }
        else if ("btn_eye_close" == e) {
            this.renderEye(false);
        }
        else if ("btn_eye2" == e) {
            this.renderEye2(true);
        }
        else if ("btn_eye_close2" == e) {
            this.renderEye2(false);
        }
    }
});