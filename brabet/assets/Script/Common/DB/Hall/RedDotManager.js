let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.RedDotManager = undefined;
var o = require("../../Define/ShareDefine")
    , i = require("../../Base/Singleton")
    , a = require("../../Define/GameEventDefine")
    , r = require("../../Define/HttpServerDefine")
    , s = function (e) {
        function t() {
            var t = null !== e && e.apply(this, arguments) || this;
            return t._RechargeInfoDataResult = null,
                t._ShowRedDotDataResult = null,
                t
        }
        return __extends(t, e),
            t.prototype.Init = function () {
                this.JS_Name = "RedDotManager",
                    this.Log("Init"),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.RECHARGE_INFOV2, this.onRechargeInfo, this),
                    app.HttpServerManager().RegNetPack(r.HttpAPI.SHOW_REDDOT_RECEIVE, this.onShowRedDotReceive, this),
                    app.Client.RegEvent(a.GameEventDefine.NOTICE_UPDATELIST, this.RequestRecharge_InfoV2, this),
                    app.Client.RegEvent(a.GameEventDefine.LOAD_HALL_SUCCESS, this.OnLoadHallSuccess, this)
            }
            ,
            Object.defineProperty(t.prototype, "ShowRedDotDataResult", {
                get: function () {
                    return this._ShowRedDotDataResult
                },
                set: function (e) {
                    this._ShowRedDotDataResult = e,
                        this.onUpdateRedDotData()
                },
                enumerable: false,
                configurable: true
            }),
            Object.defineProperty(t.prototype, "RechargeInfoDataResult", {
                get: function () {
                    return this._RechargeInfoDataResult
                },
                set: function (e) {
                    this._RechargeInfoDataResult = e,
                        this.onUpdateRechargeInfoData()
                },
                enumerable: false,
                configurable: true
            }),
            t.prototype.GetActiveInfo = function (e) {
                return this._RechargeInfoDataResult ? this._RechargeInfoDataResult[e] : null
            }
            ,
            t.prototype.updateSingleData = function (e) {
                e && (e.type == o.RedDotStr.notice ? (this._ShowRedDotDataResult[e.type].is_show = e.bShow,
                    this.onUpdateRedDot()) : this.RequestShowRedDotReceive({
                        version: 2,
                        event: e.type
                    }))
            }
            ,
            t.prototype.localStorageRedData = function (e) {
                e && (this._ShowRedDotDataResult[e.type].is_show = e.bShow,
                    this.onUpdateRedDot())
            }
            ,
            t.prototype.onUpdateDotReceive = function () {
                this.Log("onUpdateDotReceive")
            }
            ,
            t.prototype.RequestRecharge_InfoV2 = function () {
                app.HttpServerManager().SendHttpPack(r.HttpAPI.RECHARGE_INFOV2, {
                    token: app.UserManager().GetUserInfo.token
                })
            }
            ,
            t.prototype.onRechargeInfo = function (e) {
                // if (isgoServer == true) {
                //     if (e.Atividades_de_Natal == null) {
                //         e.Atividades_de_Natal = {
                //             "switch": 1,
                //             "title": "Atividades de Natal",
                //             "img": "https://www.yotubet.com/uploads/notice_image/AtividadesdeNatal.png",
                //             "content": "<size=26><color=#f9de06><b>Condições para participação no evento (UTC-3):</b></size></color><br/><size=24><color=#ffffff>Depósitos acumulados superiores a R$ 500 de 1º a 25 de dezembro</size></color><br/><br/><color=#f9de06><size=26><b>Conteúdo da recompensa:</b></size></color><br/><size=24><color=#ffffff>2 pessoas receberão recompensa de R$ 5.000</size></color><br/><size=24><color=#ffffff>3 pessoas receberão recompensa de R$ 3.000</size></color><br/><size=24><color=#ffffff>5 pessoas receberão recompensa de R$ 2.000</size></color><br/><size=24><color=#ffffff>10 pessoas receberão recompensa de R$ 1.000</size></color><br/><size=24><color=#ffffff>30 pessoas receberão recompensa de R$ 500</size></color><br/><br/><color=#ffffff>O sorteio será realizado no dia 26 de dezembro, e a lista dos vencedores será divulgada no canal oficial do Telegram</size></color><br/><br/><color=#f9de06><size=26>InstrucGes Do Evento: </size></color><br/><size=24><color=#ffffff>Caso os jogadores obtenham recompensas por meios ilegais, as recompensas obtidas serão deduzidas e a conta será congelada. Caso haja diferenças na interpretação das regras, a plataforma reserva-se o direito final de interpretar este evento.</size></color><br/>",
                //             "content_type": "1",
                //             "entrance_img": "https://www.yotubet.com/uploads/notice_image/AtividadesdeNatal.png",
                //             "inside": "0",
                //             "outside": "https://t.me/Yotubet01",
                //             "button_name": "Entre no canal oficial",
                //             "mobile_title": "Atividades de Natal",
                //             "mobile_intro": "Bônus de depósito de Natal, até R$ 5000",
                //             "act_id": 25,
                //             "sort": 7,
                //             "icon_url": "",
                //             "is_show": 1
                //         }
                //         e.activity_config.push({
                //             "id": 25,
                //             "title": "Atividades de Natal",
                //             "type": 2,
                //             "sort": 7,
                //             "icon_url": "https://www.yotubet.com/uploads/images/activity_config/icon_Natal.png",
                //             "is_show": 1
                //         })
                //         e.rain_of_red_envelopes.content="<size=26><color=#f9de06><b>Hora do evento(UTC-3):</b></size></color><br/><br/><size=24><color=#ffffff>Hora de distribuicao: 00:00 - 02:00,02:00 - 03:59...........20:00 - 21:59,22:00 - 23:59 Emitido periodicamente a cada 2 horas</size></color><br/><br/><color=#f9de06><size=26>Condicies do Evento: </size></color><br/><size=24><color=#ffffff>Os usuários que usaram o código de resgate e obtiveram recompensas são elegíveis para ativação (o código de resgate é divulgado no canal oficial) Canal oficial do Telegram: @yotubet01</size></color><br/><br/><color=#f9de06><size=26><b>InstrucGes Do Evento:</b></size></color><br/><size=24><color=#ffffff>1. Um número indefinido de envelopes vermelhos é distribuído todos os dias, cada envelope vermelho custa R$ 10</size></color><br/><size=24><color=#ffffff>2. Envelopes vermelhos serão distribuídos em cada período e os jogadores poderão participar repetidamente</size></color><br/><size=24><color=#ffffff>3. Durante o evento, envelopes vermelhos aparecerão na interface do lobby. (Os jogadores precisam retornar ao lobby para recebê-lo)</size></color><br/><size=24><color=#ffffff>4. O bônus deste evento requer 1 vez de giro antes de poder ser sacado.</size></color><br/><size=24><color=#ffffff>5. Caso os jogadores obtenham recompensas por meios ilegais, as recompensas obtidas serão deduzidas e a conta será congelada. Caso haja diferenças na interpretação das regras, a plataforma reserva-se o direito final de interpretar este evento.</size></color><br/>"
                //     }
                // }
                this.RechargeInfoDataResult = e,
                    this.RechargeInfoDataResult.activity_config.sort(function (e, t) {
                        return t.sort - e.sort
                    }),
                    app.Client.OnEvent(a.GameEventDefine.RECHARGE_INFOV2, e)
            }
            ,
            t.prototype.GetSortDataToID = function (e) {
                for (var t = 0; t < this.RechargeInfoDataResult.activity_config.length; t++) {
                    var n = this.RechargeInfoDataResult.activity_config[t];
                    if (e === n.id)
                        return n
                }
                return null
            }
            ,
            t.prototype.RequestShowRedDotReceive = function (e) {
                // if (isgoServer) {
                //     if (!e.event) {
                //         e.event = 1
                //     }
                // }
                app.HttpServerManager().SendHttpPack(r.HttpAPI.SHOW_REDDOT_RECEIVE, {
                    token: app.UserManager().GetUserInfo.token,
                    version: e.version,
                    event: e.event ? e.event : ""
                })
            }
            ,
            t.prototype.onShowRedDotReceive = function (e, t) {
                if (t.event) {
                    if (isgoServer == true) {
                        if (e[t.event]) {
                            let temp = {}
                            temp[t.event] = e[t.event]
                            e = temp
                        }
                    }
                    if (!this.ShowRedDotDataResult)
                        return;
                    for (var n in e)
                        if (Object.prototype.hasOwnProperty.call(e, n)) {
                            var i = e[n];
                            return this.ShowRedDotDataResult[n] = i,
                                this.ShowRedDotDataResult = this.ShowRedDotDataResult,
                                void (t.event == o.RedDotStr.clean_bet && app.Client.OnEvent(a.GameEventDefine.SINGLE_CLEARBAT, this.ShowRedDotDataResult))
                        }
                }
                this.ShowRedDotDataResult = e,
                    app.Client.OnEvent(a.GameEventDefine.BETBONUS_RECEIVE, this.ShowRedDotDataResult)
            }
            ,
            t.prototype.onUpdateRedDotData = function () {
                this.ShowRedDotDataResult && app.Client.OnEvent(a.GameEventDefine.SHOW_REDDOT_RECEIVE, this.ShowRedDotDataResult)
            }
            ,
            t.prototype.onUpdateRechargeInfoData = function () { }
            ,
            t.prototype.onUpdateRedDot = function () {
                this.onUpdateRedDotData(),
                    this.onUpdateRechargeInfoData()
            }
            ,
            t.prototype.OnLoadHallSuccess = function () {
                this.RequestShowRedDotReceive({
                    version: 1
                })
            }
            ,
            t.prototype.OnReload = function () {
                this._RechargeInfoDataResult = null
            }
            ,
            t
    }(i.Singleton);
n.RedDotManager = s,
    module.exports = n
