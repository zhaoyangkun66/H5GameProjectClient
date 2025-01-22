var BaseForm = require("BaseForm");
var GameEventDefine = require("GameEventDefine")
cc.Class({
    extends: BaseForm.default,

    properties: {

    },
    OnCreateInit() {
       // this.RegEvent(GameEventDefine.GameEventDefine.GET_KEFU_LIST, this.onGET_KEFU_LIST)
        this.editbox_Password1 = cc.find("bg/NewLayout/editbox_Password1", this.node).getComponent(cc.EditBox)
        this.tipNode1 = cc.find("bg/NewLayout/tipNode1", this.node)
        this.tipNode1.active = false
        //verifyWithdrawPass
        //modifywithdrawpass
        //verifyWithdrawalPasswordV2
    },
    OnShow() {
        this.func = arguments[0]
        this.editbox_Password1.string = ""
        // "Senha incorreta, digite novamente!"//密码错误，请重新输入！
        // A senha de saque não pode ficar em branco
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
    renderEye(e) {
        this.editbox_Password1.inputFlag = e ? cc.EditBox.InputFlag.DEFAULT : cc.EditBox.InputFlag.PASSWORD
        cc.find("bg/NewLayout/lb_node1/btn_eye", this.node).active = !e
        cc.find("bg/NewLayout/lb_node1/btn_eye_close", this.node).active = e
    },
    renderEye(e) {
        this.editbox_Password1.inputFlag = e ? cc.EditBox.InputFlag.DEFAULT : cc.EditBox.InputFlag.PASSWORD
        cc.find("bg/NewLayout/lb_node1/btn_eye", this.node).active = !e
        cc.find("bg/NewLayout/lb_node1/btn_eye_close", this.node).active = e
    },
    // onGET_KEFU_LIST(e) {
    //     void cc.sys.openURL(window.location.origin + "/client/kefu/?uid=" + app.UserManager().UserInfo.uid + "&nickname=" + app.UserManager().GetUserInfo.nickname + "&channel_id=" + app.ClientConfigManager().GetClientConfig.channel_id + "&vip_id=" + (app.UserManager().GetUserInfo.vip_id - 1) + "&license=" + e)
    // },
    OnClick(e) {
        if ("btnSure" == e) {
            if (this.onPassword1End()) {
                let Password = this.editbox_Password1.string
                this.func(Password)
                this.CloseForm()
            }
        }
        else if ("btn_eye" == e) {
            this.renderEye(true);
        }
        else if ("btn_eye_close" == e) {
            this.renderEye(false);
        }
        else if ("lb_Help" == e) {
            var t = app.SupportManager().SelToServiceTypeName();
            app.FormManager().ShowForm(t)
            // app.SupportManager().RequestSupportList();
            //void cc.sys.openURL(app.ClientConfigManager().GetGlobalConfig.KEFU_URL)
            //window.location.origin + "/client/kefu/?uid=" + app.UserManager().UserInfo.uid + "&nickname=" + app.UserManager().GetUserInfo.nickname + "&channel_id=" + app.ClientConfigManager().GetClientConfig.channel_id + "&vip_id=" + (app.UserManager().GetUserInfo.vip_id - 1) + "&license=" + e
        }

    }
});