let UIModuleInfo = require("UIModuleInfo")
let AudioConf = require("AudioConf")

let UIManager = function () {
    this.init()
    this.BoolmusicV = true
    this.BooleffectV = true
};
UIManager.prototype = {
    constructor: UIManager,
    init() {
        this._openList = {}                      //窗口打开类表(已经打开的UI)
        this._curOpenUI = null                   //最近打开的ui
        this._preUI = null                       //前一个打开的ui
        this.uiOrder = 10
    },

    closeAll() {
        this.init()
    },

    attachUI(scene) {
        if (this._uiLayer) {

        } else {
            this.init()
            this._uiLayer = new cc.Node()
            this.getAudioEngineData()
            //scene.addChild(this._uiLayer, 960)
            cc.game.addPersistRootNode(this._uiLayer)
            this._uiLayer.x = 1136 / 2
            this._uiLayer.y = 640 / 2
        }

    },

    removeUI() {
        this._uiLayer = null
    },

    openUI(viewId, data) {

        let viewInfo = UIModuleInfo[viewId]//UIInfoConst[id]
        if (viewInfo) {

            let view = this._openList[viewId]
            this._curViewID = viewId

            if (view) {
                view.getComponent(viewInfo.viewName).init(data);
                this._preUI = this._curOpenUI
                this._curOpenUI = view
            }
            else {
                this.uiOrder = viewInfo.Zorder
                //this._openList[viewId] = {}
                cc.resources.load(viewInfo.csbRes, cc.Prefab, (err, prefab) => {
                    cc.log("loadRes", viewId)
                    if (!this._openList[viewId]) {
                        let view = cc.instantiate(prefab);
                        this._openList[viewId] = view
                        this._uiLayer.addChild(view, this.uiOrder);
                        view.getComponent(viewInfo.viewName).init(data);
                        view.viewId = viewId
                        this._preUI = this._curOpenUI
                        this._curOpenUI = view
                    }
                });
            }

        }
        else {
            cc.log("视图创建失败，检查配置！")
            cc.log("viewId = ", viewId)

        }

    },

    setUITop(viewId) {

    },

    openTip(str, callback, data) {
        this.openUI(2, [str, callback, data])
    },

    openTipEffect(str) {
        cc.resources.load("loadRes/ui/TipsEffect", cc.Prefab, (err, prefab) => {
            let TipsEffect = cc.instantiate(prefab);
            this._uiLayer.addChild(TipsEffect, 100)
            let TipsLabel = TipsEffect.getChildByName("TipsLabel").getComponent("cc.Label")
            TipsLabel.string = str
            TipsEffect.runAction(cc.sequence(cc.moveBy(1, cc.v2(0, 40)), cc.removeSelf()))
        });
    },

    getUIById(viewId) {
        return this._openList[viewId] //or cc.log("this view is not added")
    },

    closeUI(viewId) {
        let view = this._openList[viewId]
        if (!view) { return }
        this._openList[viewId] = undefined
        view.removeFromParent()
        view.destroy()
    },

    setMusicV(volume) {
        this.musicV = volume
        cc.audioEngine.setMusicVolume(volume)
        if (this.musicV < 0.1) {
            if (this.BoolmusicV) {
                this.BoolmusicV = false
                cc.audioEngine.pauseMusic()
            }
        }
        else {
            if (!this.BoolmusicV) {
                this.BoolmusicV = true
                cc.audioEngine.resumeMusic()
            }
        }
    },

    setEffectV(volume) {
        this.effectV = volume
        cc.audioEngine.setEffectsVolume(volume)
        if (this.effectV < 0.1) {
            this.BooleffectV = false
        }
        else {
            this.BooleffectV = true
        }
    },
    saveAudioEngineData() {
        let baseData = [this.musicV, this.effectV]
        let baseData1 = JSON.stringify(baseData); //将json格式转换成string
        cc.sys.localStorage.setItem("AudioEngineData", baseData1)
    },
    getAudioEngineData() {
        let baseData = cc.sys.localStorage.getItem("AudioEngineData"); //从本地读取数据
        if (baseData) {
            baseData = JSON.parse(baseData); //将string转换成json
            this.musicV = baseData[0]
            this.effectV = baseData[1]
        }
        else {
            this.musicV = 0.5
            this.effectV = 0.5
        }
        if (this.musicV < 0.1) {
            this.BoolmusicV = false
        }
        else {
            this.BoolmusicV = true
        }
        if (this.effectV < 0.1) {
            this.BooleffectV = false
        }
        else {
            this.BooleffectV = true
        }

        cc.audioEngine.setMusicVolume(this.musicV)
        cc.audioEngine.setEffectsVolume(this.effectV)
    },
    playAudio(aid, isLoop) {
        let audioInf = AudioConf[aid]
        if (audioInf) {
            let path = audioInf.filepath + "/" + audioInf.filename
            if (audioInf.isbg) {
                if (this.BoolmusicV == false) {
                    return
                }
                cc.resources.load(path, cc.AudioClip, (err, res) => {
                    // cc.log("path ======= ", path)
                    cc.audioEngine.playMusic(res, isLoop || true);
                });
            }
            else {
                if (this.BooleffectV == false) {
                    return
                }
                cc.resources.load(path, cc.AudioClip, (err, res) => {
                    // cc.log("path ======= ", path)
                    cc.audioEngine.playEffect(res, isLoop);
                });
            }


        }
        else
            cc.log("声音配置错误！！", aid)
    },
    saveAccountData(account, password) {
        let code = password
        let c = String.fromCharCode(code.charCodeAt(0) + code.length);
        for (let i = 1; i < code.length; i++) {
            c += String.fromCharCode(code.charCodeAt(i) + code.charCodeAt(i - 1));
        }
        password = escape(c)

        let baseDataObject = [account, password]
        let baseData = JSON.stringify(baseDataObject); //将json格式转换成string
        cc.sys.localStorage.setItem("AccountData", baseData)
    },
    getAccountData() {
        let baseDataObject = {}
        let baseData = cc.sys.localStorage.getItem("AccountData"); //从本地读取数据
        if (baseData) {
            baseData = JSON.parse(baseData); //将string转换成json
            let account = baseData[0]
            let password = baseData[1]
            let code = password
            code = unescape(code);
            let c = String.fromCharCode(code.charCodeAt(0) - code.length);
            for (let i = 1; i < code.length; i++) {
                c += String.fromCharCode(code.charCodeAt(i) - c.charCodeAt(i - 1));
            }
            password = c
            baseDataObject.account = account
            baseDataObject.password = password
        }
        return baseDataObject
    },
    saveShopOrdersWeChat(baseDataObject) {
        let baseData = JSON.stringify(baseDataObject); //将json格式转换成string
        cc.sys.localStorage.setItem("ShopOrdersWeChat2", baseData)
    },
    getShopOrdersWeChat() {
        let baseDataObject = []
        let baseData = cc.sys.localStorage.getItem("ShopOrdersWeChat2"); //从本地读取数据
        if (baseData) {
            baseDataObject = JSON.parse(baseData); //将string转换成json
            return baseDataObject
        }
        return baseDataObject
    },
    saveShopOrdersWeChatCheck(baseDataObject) {
        let baseData = JSON.stringify(baseDataObject); //将json格式转换成string
        cc.sys.localStorage.setItem("ShopOrdersWeChatCheck2", baseData)
    },
    getShopOrdersWeChatCheck() {
        let baseDataObject = []
        let baseData = cc.sys.localStorage.getItem("ShopOrdersWeChatCheck2"); //从本地读取数据
        if (baseData) {
            baseDataObject = JSON.parse(baseData); //将string转换成json
            return baseDataObject
        }
        return baseDataObject
    },
    saveAccountDataNativeFirst(baseData) {
        cc.sys.localStorage.setItem("AccountDataNativeFirst", baseData)
    },
    getAccountDataNativeFirst() {
        return cc.sys.localStorage.getItem("AccountDataNativeFirst"); //从本地读取数据
    },
    saveDate() {
        cc.sys.localStorage.setItem("CarveUpBonusPoolOpenDate1", new Date().getTime())
    },
    isSameDay() {
        let baseData = cc.sys.localStorage.getItem("CarveUpBonusPoolOpenDate1");
        console.log("isSameDay", baseData)
        if (baseData) {
            let dateA = new Date(Number(baseData));
            let dateB = new Date(new Date().getTime());
            return (dateA.setHours(0, 0, 0, 0) == dateB.setHours(0, 0, 0, 0));
        }
        else {
            return false
        }

    },
    saveAutoCheckRedPacketTypeIndex(baseData) {
        cc.sys.localStorage.setItem("AutoCheckRedPacketTypeIndex", baseData)
    },
    getAutoCheckRedPacketTypeIndex() {
        return cc.sys.localStorage.getItem("AutoCheckRedPacketTypeIndex"); //从本地读取数据
    },

    saveNewPlayRedpacketRoomID(baseData) {
        cc.sys.localStorage.setItem("NewPlayRedpacketRoomID", baseData)
    },
    getNewPlayRedpacketRoomID() {
        return cc.sys.localStorage.getItem("NewPlayRedpacketRoomID"); //从本地读取数据
    },
}


module.exports = new UIManager();