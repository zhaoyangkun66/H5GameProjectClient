let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../Common/Base/BaseForm")
    , RichTextCallBack = require("RichTextCallBack")
    , i = cc._decorator
    , a = i.ccclass
    , r = i.property
    , s = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t.conRichtext = null,
                t
        }
        return __extends(t, e),
            t.prototype.OnCreateInit = function () {
                this.JS_Name = "UIHallNotice2"
                this.Item = cc.find("bg/scrollviewLeft/Item", this.node)
                this.toggleContainer = cc.find("bg/scrollviewLeft/toggleContainer", this.node)
                this.title = cc.find("bg/title", this.node).getComponent(cc.Label)
                this.Item.active = false
            }
            ,
            t.prototype.OnShow = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                this.renderListData()
            }
            ,
            t.prototype.renderListData = function () {
                // app.HNoticeManager().NoticeListDataResult = [
                //     {
                //         "title": "Notificação",
                //         "image": "",
                //         "in_url": 0,
                //         "out_url": "",
                //         "content": "<size=24><color=#f9de06>Bem-vindo ao cassino caça-níqueis brasileiro mais popular do ano - 2048bet</size></color><br/><br/><size=24><color=#ffffff>Retirada rápida de dinheiro, atendimento ao cliente 24 horas online</size></color><br/><size=24><color=#ffffff>● Convide seus amigos para se cadastrarem como membros e você terá a chance de receber </size></color><size=24><color=#f9de06>R$100</size></color><br/><size=24><color=#ffffff>● Basta depositar R$ 10 ou mais e você receberá um bônus de até </size></color><size=24><color=#f9de06>625%</size></color><br/><size=24><color=#ffffff>● Cadastre-se agora e você receberá um bônus de </size></color><size=24><color=#f9de06>R$ 13</size></color><br/><color=#2073EE><on click='handler' param='10101'>Para mais detalhes,Por favor ,visite</on></c>"
                //     },
                //     {
                //         "title": "title",
                //         "image": "http://192.168.1.100:280/client2048bet/uploads/notice_image/NewbieBonus.png",
                //         "in_url": 10101,
                //         "out_url": "",
                //         "content": "跳转外链接<u><color=#00ff00><on click='handler' param='https://www.baidu.com/'>www.baidu.com</on></c></u><br/>跳转游戏界面<u><color=#00ff00><on click='handler' param='10101'>点击</on></c></u>"
                //     }
                // ]

                this.toggleContainer.removeAllChildren()
                for (let index = 0; index < app.HNoticeManager().NoticeListDataResult.length; index++) {
                    const element = app.HNoticeManager().NoticeListDataResult[index];
                    let Item = cc.instantiate(this.Item);
                    Item.getChildByName("Background").getChildByName("label").getComponent(cc.Label).string = element.title
                    Item.getChildByName("checkmark").getChildByName("label").getComponent(cc.Label).string = element.title
                    {
                        let ItemToggle = Item.getComponent(cc.Toggle)
                        let EventHandler = new cc.Component.EventHandler;
                        EventHandler.target = this.node
                        EventHandler.component = this.JS_Name
                        EventHandler.handler = "onItemToggle"
                        EventHandler.customEventData = JSON.stringify(element)
                        ItemToggle.clickEvents = []
                        ItemToggle.clickEvents.push(EventHandler)
                    }
                    Item.active = true
                    this.toggleContainer.addChild(Item)
                }

                var e = app.HNoticeManager().NoticeListDataResult.shift();
                this.setContent(e)
            }
            ,
            t.prototype.onItemToggle = function (t, element) {
                var json = JSON.parse(element)
                this.setContent(json)
            },
            t.prototype.OnClick = function (e) {
                "btn_Close" != e || this.CloseForm()
            },
            // t.prototype.BtnLabelCallBack = function (e, t) {
            //     var n = (t = JSON.parse(t)).out_url;
            //     this.CloseForm(),
            //         n ? cc.sys.openURL(n) : t.in_url > 0 && app.InteractionMgr().SendWndEvent(t.in_url)
            // },
            t.prototype.onimg_Item = function (e, t) {
                var n = (t = JSON.parse(t)).out_url;
                this.CloseForm(),
                    n ? cc.sys.openURL(n) : t.in_url > 0 && app.InteractionMgr().SendWndEvent(t.in_url)
            },
            t.prototype.setContent = function (data) {
                //  cc.find("scrollview_content/view/content/below/richtext", this.node).getComponent(cc.RichText).string ='1.Ganhe uma chance de "loteria" a cada depósito, bônus de até R$ 10.000<u><color=#00ff00><on click="handler" param="100003"> &gt;&gt;Ver atividade&lt;&lt;</on></c></u><br/>2. Se voce perder dinheiro real ao jogar o jogo, oferecemos até 25% de reembolso<br/>3. valor do primeiro depósito único é maiorou igual a R$50, vocè receberá um bónus de 50%' i.show_desc,
                this.title.string = data.title
                // this.conRichtext.string = data.content
                this.img_Item = cc.find("/bg/scrollview/view/content/img_Item", this.node);
                if (data.image) {
                    this.img_Item.active = true
                    this.img_Item.getComponent(cc.Sprite).spriteFrame = null
                    app.ImageUtil().LoadImage(this.img_Item, data.image)
                    {
                        let img_Item = this.img_Item.getComponent(cc.Button)
                        let EventHandler = new cc.Component.EventHandler;
                        EventHandler.target = this.node
                        EventHandler.component = this.JS_Name
                        EventHandler.handler = "onimg_Item"
                        EventHandler.customEventData = JSON.stringify(data)
                        img_Item.clickEvents = []
                        img_Item.clickEvents.push(EventHandler)
                    }
                }
                else {
                    this.img_Item.active = false
                }
                if (data.content) {
                    this.conRichtext.active = true
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
                }
                else {
                    this.conRichtext.active = false
                }

                // var t = Boolean(data.in_url || data.out_url)
                //     , n = cc.find("/bg/scrollview/view/content/btn_label", this.node);
                // if (n.active = t,
                //     t) {
                //     var o = new cc.Component.EventHandler;
                //     o.target = this.node,
                //         o.component = this.JS_Name,
                //         o.handler = "BtnLabelCallBack",
                //         o.customEventData = JSON.stringify(data),
                //         data.in_url && (n.getComponent(cc.Button).clickEvents = [],
                //             n.getComponent(cc.Button).clickEvents.push(o)),
                //         data.out_url && (n.getComponent(cc.Label).string = data.out_url,
                //             n.getComponent(cc.Button).clickEvents = [],
                //             n.getComponent(cc.Button).clickEvents.push(o)),
                //         data.url_text && (n.getComponent(cc.Label).string = data.url_text)
                // }
            }
            ,
            t.prototype.OnClose = function () {
                for (var e = [], t = 0; t < arguments.length; t++)
                    e[t] = arguments[t];
                app.HNoticeManager().ShowFreeGameTip(),
                    app.FormManager().ShowNextQueueForm("hall")
            }
            ,
            __decorate([r(cc.RichText)], t.prototype, "conRichtext", undefined),
            __decorate([a], t)
    }(o.default);
n.default = s,
    module.exports = n
