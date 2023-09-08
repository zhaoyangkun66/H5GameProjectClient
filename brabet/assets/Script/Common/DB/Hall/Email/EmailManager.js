let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.EmailManager = undefined;
var o = require("../../../Base/Singleton")
    , i = require("../../../Define/GameEventDefine")
    , a = require("../../../Define/HttpServerDefine")
    , r = function (e) {
        function t() {
            return null !== e && e.apply(this, arguments) || this
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "EmailManager",
                    this.Log("Init"),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.GET_EMAIL_LIST, this.onGetEmailList, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.ET_EMAIL_DETAIL, this.onGetEmailDetail, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.EMAIL_RECEIVE, this.onGetEmailRecvie, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.EMAIL_RECEIVEAll, this.onEmailRecvieAll, this),
                    app.HttpServerManager().RegNetPack(a.HttpAPI.EMAIL_DEl_ALL, this.onEmailDelAll, this)
            }
            ,
            t.prototype.RequstEmailRecvieAll = function () {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.EMAIL_RECEIVEAll, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.onEmailRecvieAll = function (e) {
                app.Client.OnEvent(i.GameEventDefine.EMAIL_RECEIVEAll, e)
            }
            ,
            t.prototype.RequstEmailDelAll = function () {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.EMAIL_DEl_ALL, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.onEmailDelAll = function (e) {
                app.Client.OnEvent(i.GameEventDefine.EMAIL_DEl_ALL, e)
            }
            ,
            t.prototype.onGetEmailDetail = function (e) {
                app.Client.OnEvent(i.GameEventDefine.ET_EMAIL_DETAIL, e)
            }
            ,
            t.prototype.onGetEmailList = function (e) {
                if (isgoServer) {
                    e = [
                        {
                            "id": 6145,
                            "gold": 0,
                            "title": "Notícia Importante",
                            "content": "Caros usuários do BRABET, para melhor atendê-lo. Você pode nos encontrar através deles a partir de hoje! \r\nwww.brabet.com , www.1brabet.com , www.2brabet.com , www.3brabet.com , www.4brabet.com , www.5brabet.com , www.6brabet.com , www.7brabet.com , www.8brabet.com , www.9brabet.com \r\nTodos os itens acima são endereços oficialmente certificados.",
                            "url_text": "",
                            "in_url": 0,
                            "out_url": "",
                            "bet_multiple": 0,
                            "create_time": "2023-09-07 12:03:45",
                            "expire_day": 30,
                            "expire_ymd": "2023-10-07 00:00:00",
                            "expire_time": 1696647600,
                            "status": 0
                        }
                    ]
                    if (!(e instanceof Array)) {
                        e = []
                    }
                }
                e.sort(function (e, t) {
                    return e.status - t.status
                }),
                    app.Client.OnEvent(i.GameEventDefine.GET_EMAIL_LIST, e)
            }
            ,
            t.prototype.RequstGetEmailDetail = function (e) {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.ET_EMAIL_DETAIL, e)
            }
            ,
            t.prototype.RequstGetEmailList = function (e) {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.GET_EMAIL_LIST, e)
            }
            ,
            t.prototype.RequstGetEmailRecive = function (e) {
                app.HttpServerManager().SendHttpPack(a.HttpAPI.EMAIL_RECEIVE, e)
            }
            ,
            t.prototype.onGetEmailRecvie = function (e) {
                app.Client.OnEvent(i.GameEventDefine.EMAIL_RECEIVE, e)
            }
            ,
            t
    }(o.Singleton);
n.EmailManager = r,
    module.exports = n
