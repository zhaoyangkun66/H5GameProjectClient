var BaseForm = require("BaseForm")
var RichTextCallBack = require("RichTextCallBack")
var UINameDefine = require("UINameDefine")
cc.Class({
    extends: BaseForm.default,

    properties: {

    },

    OnCreateInit() {
        this.lb_tit = this.GetWndComponent("bg/top/lb_tit", cc.Label)
        this.conRichtext = this.GetWndNode("bg/scrollview/content/conRichtext")
    },
    OnShow() {
        let data = arguments[0]
       // this.lb_tit.string = data.title
        this.conRichtext.getComponent(RichTextCallBack.default).setRichtextStrCallBack({
            str: data.content,
            callBack: function (link) {
                // 判断是否为数字字符串
                if (isNaN(link)) {
                    cc.sys.openURL(link)
                }
                else {
                    app.InteractionMgr().SendWndEvent(link)
                }
                app.FormManager().CloseForm(UINameDefine.UINameDefine.UIHallNotice)
            }
        })
        app.HNoticeManager().RequestGetGongGaoDetail(data.id)
    },
    OnClick(e) {

    },
});
