let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
});
var s = require("GDataSource")
    , e = require("GApiClient")
    , o = require("GSlotTransactionModel")
    , c = require("AudioManager")
    , r = require("Transitions")
    , h = require("RequestHandler")
    , a = require("GameInitializationHandler")
    , u = require("MultiResHandler")
    , l = require("GRefreshWorldHandler")
    , f = require("NotifyHelper")
    , d = require("AnalyticsHelper")
    , v = require("Utils")
    , _ = require("SettingMenuHelper")
    , p = require("UIAppearanceHelper")
    , m = require("WalletHelper")
    , b = require("GameLayout")
    , S = require("SettingMenuHandlers")
    , g = require("WalletHandlers")
    , C = require("GameEventHandler")
    , y = require("GNormalGameState")
    , M = require("GRespinGameState")
    , A = require("BGMHandler")
    , w = require("JakeSlotGameTemplate")
    , I = require("SpaceBarInterrupter")
    , H = require("ReplayModeHandler")
    , O = require("TransactionStateMachineHandler")
    , B = require("SlotProperties")
    , N = require("GConstants")
    , G = require("GeneralAudioConstant")
    , T = require("SpinConfigHandler")
    , k = cc._decorator.ccclass
    , R = function (t) {
        function i() {
            var i = null !== t && t.apply(this, arguments) || this;
            return i.generalControllers = Object.create(null),
                i.Oh = void 0,
                i.Bh = void 0,
                i.Nh = true,
                i
        }
        return __extends(i, t),
            i.prototype.onLoad = function () {
                a.initializeGame({
                    dataSource: s.gDataSource,
                    apiClient: e.gApiClient,
                    multiResHandler: u.default,
                    notifyConfig: {
                        theme: f.ThemeType.SLOT,
                        buttonColor: p.uiAppearanceHelper.v("game.theme_color"),
                        buttonTitleColor: p.uiAppearanceHelper.v("game.white_color"),
                        titleColor: p.uiAppearanceHelper.v("game.white_color"),
                        messageColor: p.uiAppearanceHelper.v("game.white_color")
                    },
                    gameTitle: {
                        name: shell.I18n.require("FT.Title"),
                        fontFamily: p.uiAppearanceHelper.v("game.theme_font_family")
                    },
                    callback: this.Gh.bind(this),
                    refreshWorldCallback: this.Th.bind(this),
                    updateBalanceCallback: this.kh.bind(this),
                    gameLayoutInfo: b.gameLayout,
                    autoDeductBalance: true,
                    updateAudioPlayRateCallback: this.Rh.bind(this),
                    socketConfig: {
                        enableSessionSocket: true
                    }
                }),
                    w.initJakeSlotGameTemplate({
                        spaceBarInterrupterEnabled: true
                    })
            }
            ,
            i.prototype.Gh = function () {
                v.sequenceCallback(this.Ph.bind(this), this.Eh.bind(this), this.Lh.bind(this), this.Uh.bind(this), this.Dh.bind(this), this.jh.bind(this), this.xh.bind(this), this.Wh.bind(this), this.Fh.bind(this), this.Vh.bind(this), this.zh.bind(this), this.Jh.bind(this), this.Kh.bind(this), this.qh.bind(this))(this.Yh.bind(this))
            }
            ,
            i.prototype.Ph = function (t) {
                T.initSpinConfig({
                    minimumSpinningTime: .3,
                    regularSpinningTime: .8,
                    jurisdictionModel: s.gDataSource.systemModel.operatorJurisdiction
                }),
                    t && t()
            }
            ,
            i.prototype.Th = function (t) {
                var i = function () {
                    t && t()
                };
                s.gDataSource.isGameReplaying ? this.Qh(i) : this.Zh(i)
            }
            ,
            i.prototype.Qh = function (t) {
                var i, n = this;
                H.fmReplayModeHandler.replayStarted() ? (H.fmReplayModeHandler.completeReplay(),
                    i = function () {
                        t && t(),
                            H.fmReplayModeHandler.stopReplay(function () {
                                n.U && (n.U.destroy(),
                                    n.U = void 0),
                                    v.deferCallback(n)(n.Xh)
                            })
                    }
                ) : (H.fmReplayModeHandler.startReplay(),
                    i = function () {
                        t && t(),
                            n.U && (n.U.destroy(),
                                n.U = void 0),
                            v.deferCallback(n)(n.Xh)
                    }
                ),
                    this.generalControllers.refreshWorld.refreshWorldByGameReplay(i)
            }
            ,
            i.prototype.Zh = function (t) {
                s.gDataSource.transactionModel.previousGameState === o.SpinType.NORMAL ? this.generalControllers.refreshWorld.refreshWorldByChangeWalletIdle(t) : t && t()
            }
            ,
            i.prototype.kh = function (t) {
                _.settingMenuHelper.setBalance(t)
            }
            ,
            i.prototype.Rh = function (t) {
                c.updatePlayRate(t)
            }
            ,
            i.prototype.Eh = function (t) {
                var i = {
                    getGameInfo: this.$h.bind(this)
                };
                m.walletHelper.init(i),
                    t && t()
            }
            ,
            i.prototype.$h = function (t, i) {
                var n = t ? {
                    wk: t
                } : void 0;
                this.ta(function (t, n) {
                    i && i(n)
                }, n)
            }
            ,
            i.prototype.Lh = function (t) {
                var i = Date.now();
                d.sendEvent(shell.ga.CATEGORY_QUERY, shell.ga.EVENT_READ_INFO),
                    shell.setProgressVisible(false),
                    f.showMessage(shell.I18n.require("General.LoadingInfo")),
                    this.ta(function (n, s) {
                        m.walletHelper.processInitGameInfo(s, function () {
                            shell.ga.sendTiming(shell.ga.CATEGORY_QUERY, shell.ga.EVENT_READ_INFO, Date.now() - i),
                                t && t()
                        })
                    })
            }
            ,
            i.prototype.ta = function (t, i) {
                h.doAPIRequest({
                    name: "Get Game Info",
                    apiRequest: e.gApiClient.getGameInfo.bind(e.gApiClient),
                    apiRequestParam: i,
                    retryMessage: shell.I18n.require("General.LoadingInfoRetry"),
                    errorTitle: shell.I18n.require("General.ErrorLaunchFailed")
                }, this.ia(t))
            }
            ,
            i.prototype.ia = function (t) {
                return function (i, n) {
                    if (n && n.dt) {
                        var e = s.gDataSource.systemModel
                            , o = e.betLevelList
                            , c = e.betSizeList
                            , r = e.maxLineNumber
                            , h = s.gDataSource.transactionModel
                            , a = h.betSizeValue
                            , u = h.betLevelValue;
                        _.settingMenuHelper.betSizeList = c,
                            _.settingMenuHelper.betSizeValue = a,
                            _.settingMenuHelper.betLevelList = o,
                            _.settingMenuHelper.betLevelValue = u,
                            _.settingMenuHelper.betLineValue = r,
                            t(i, n)
                    }
                }
            }
            ,
            i.prototype.Uh = function (t) {
                c.init(),
                    t && t()
            }
            ,
            i.prototype.Dh = function (t) {
                S.setupSettingMenu({
                    apiClient: e.gApiClient,
                    dataSource: s.gDataSource,
                    settingMenuHelper: _.settingMenuHelper,
                    walletHelper: m.walletHelper,
                    isProgressiveGame: false,
                    settingMenuDependenciesPath: {
                        historyLibPath: "lib/fortune_mouse_history",
                        historyPrefabPath: "lib/fortune_mouse_history/prefab/history_factory"
                    },
                    toggleEffectMuted: c.toggleEffectMuted,
                    toggleMusicMuted: c.toggleMusicMuted,
                    callback: t
                })
            }
            ,
            i.prototype.jh = function (t) {
                var i = {
                    generalControllers: this.generalControllers
                };
                this.na = this.getComponent("LoadingController"),
                    this.na.setup(i),
                    t && t()
            }
            ,
            i.prototype.xh = function (t) {
                f.showMessage(shell.I18n.require("General.LoadingResource")),
                    this.na.loadGeneralBundle(t, true)
            }
            ,
            i.prototype.Wh = function (t) {
                var i = this.generalControllers;
                S.initializeSettingMenu({
                    dataSource: s.gDataSource,
                    settingMenuHelper: _.settingMenuHelper,
                    settingController: i.settingController,
                    settingWalletPanelController: i.settingMenuFooterController,
                    spinButtonController: i.spinButtonController,
                    callback: t
                })
            }
            ,
            i.prototype.Fh = function (t) {
                g.setupWallets({
                    dataSource: s.gDataSource,
                    settingWalletPanelController: this.generalControllers.settingMenuFooterController,
                    settingMenuHelper: _.settingMenuHelper,
                    walletHelper: m.walletHelper,
                    callback: t
                })
            }
            ,
            i.prototype.Vh = function (t) {
                var i = s.gDataSource.transactionModel.reels
                    , n = this.generalControllers
                    , e = n.slotController
                    , r = n.clickEffectController
                    , h = n.angpaoController;
                e.init(i),
                    e.setClickEffectController(r),
                    e.setOnReelReachesBouncePointCallback(function (t) {
                        var i = s.gDataSource.transactionModel
                            , n = i.reels
                            , e = i.stateTransitionTo
                            , r = i.stateTransitionFrom
                            , a = [];
                        n.forEach(function (i, n) {
                            B.getColumnFromIndex(n) === t && a.push(i)
                        }),
                            a.includes(B.SLOT_INDEX.WILD) && r === o.SpinType.NORMAL && e === o.SpinType.NORMAL && c.playAudioIfNotPlaying(G.GENERAL_AUDIO.symWildSpawn.key),
                            e === o.SpinType.RESPIN && 2 === t && h.shake10()
                    }),
                    e.setOnSlotInterruptCallback(function () {
                        var t = s.gDataSource.transactionModel
                            , i = t.reels
                            , n = t.stateTransitionTo
                            , e = t.stateTransitionFrom;
                        i.includes(B.SLOT_INDEX.WILD) && e === o.SpinType.NORMAL && n === o.SpinType.NORMAL && (c.stopAudioIfPlaying(G.GENERAL_AUDIO.symWildSpawn.key),
                            c.playAudioIfNotPlaying(G.GENERAL_AUDIO.symWildSpawn.key))
                    }),
                    e.setSpinTiming(T.featureConfig.minimumSpinningTime, T.featureConfig.regularSpinningTime),
                    t && t()
            }
            ,
            i.prototype.sa = function () {
                I.spaceBarInterrupter.init({
                    spinButtonClickCallback: this.generalControllers.spinButtonController.clickSpinButton.bind(this.generalControllers.spinButtonController),
                    reelClickCallback: this.generalControllers.slotController.onKeyBoardDownClicked.bind(this.generalControllers.slotController)
                })
            }
            ,
            i.prototype.zh = function (t) {
                var i = this.generalControllers
                    , n = i.slotController
                    , s = i.spinButtonController
                    , e = i.slotTintController
                    , o = i.columnTintController
                    , c = i.foregroundController
                    , r = n.mask.node
                    , h = {
                        generalControllers: this.generalControllers
                    };
                r.addChild(e.node),
                    r.addChild(o.node),
                    _.settingMenuHelper.menuChangedCallBack = function () {
                        _.settingMenuHelper.isIdle() ? (s.show(),
                            c.showGold()) : (s.hide(),
                                c.hideGold())
                    }
                    ,
                    this.generalControllers.refreshWorld = new l.GRefreshWorldHandler(h),
                    this.generalControllers.refreshWorld.setupUICallback = this.Kh.bind(this),
                    t && t()
            }
            ,
            i.prototype.Jh = function (t) {
                var i = this.generalControllers.symbolPopoutController
                    , n = s.gDataSource.transactionModel.reels
                    , e = {
                        numberOfColumn: B.NORMAL_SLOT_COLUMN,
                        numberOfRow: B.NORMAL_SLOT_ROW,
                        payoutData: N.PAY_OUT_DATA
                    };
                i.setReelData(n),
                    i.setTintConfig({
                        height: 1100
                    }),
                    i.init(e),
                    t && t()
            }
            ,
            i.prototype.Kh = function (t) {
                var i;
                switch (s.gDataSource.transactionModel.stateTransitionTo) {
                    case o.SpinType.NORMAL:
                        i = new r.ToNormalSpinTransition;
                        break;
                    case o.SpinType.RESPIN:
                        i = new r.ToRespinTransition
                }
                i.instanceRun({
                    generalControllers: this.generalControllers,
                    loadingController: this.na
                }, function () {
                    i.destroy(),
                        t && t()
                })
            }
            ,
            i.prototype.qh = function (t) {
                var i = this;
                C.subscribeGamePauseEvent(),
                    C.subscribeGameResumeEvent(),
                    C.setGamePlayUIBlockEventCallback(function (t) {
                        t ? (i.generalControllers.spinButtonController.disableButton(),
                            i.generalControllers.spinButtonController.stopSpin()) : (i.generalControllers.spinButtonController.enableButton(),
                                i.generalControllers.spinButtonController.idle())
                    }),
                    t && t()
            }
            ,
            i.prototype.Yh = function () {
                shell.setProgressVisible(false),
                    f.showMessage(shell.I18n.require("General.LoadingCompleted")),
                    shell.requestGameStart(true, this.ea.bind(this))
            }
            ,
            i.prototype.ea = function () {
                this.zn(),
                    this.sa(),
                    this.oa(this.Xh.bind(this))
            }
            ,
            i.prototype.oa = function (t) {
                var i = s.gDataSource.transactionModel.stateTransitionTo === o.SpinType.NORMAL ? "setup" : "idle";
                O.initState(i),
                    t && t()
            }
            ,
            i.prototype.zn = function () {
                var t = s.gDataSource.transactionModel.stateTransitionTo;
                c.toggleAudioGameStarted(),
                    t === o.SpinType.RESPIN ? A.instantPlayRespinBGM() : A.instantPlayNormalBGM()
            }
            ,
            i.prototype.Xh = function () {
                var t = s.gDataSource.transactionModel
                    , i = t.stateTransitionFrom
                    , n = t.stateTransitionTo;
                switch (i) {
                    case o.SpinType.NORMAL:
                        n === o.SpinType.NORMAL ? this.ca = this.ra.bind(this) : n === o.SpinType.RESPIN && (this.Nh ? this.ca = this.ha.bind(this) : this.ca = this.aa.bind(this, this.ha.bind(this)));
                        break;
                    case o.SpinType.RESPIN:
                        n === o.SpinType.NORMAL ? this.ca = this.ua.bind(this, this.ra.bind(this)) : n === o.SpinType.RESPIN && (this.ca = this.ha.bind(this))
                }
                v.deferCallback(this)(this.ca)
            }
            ,
            i.prototype.la = function () {
                this.Nh = false;
                var t = this.U;
                t && t.destroy(),
                    this.U = void 0,
                    v.deferCallback(this)(this.Xh.bind(this))
            }
            ,
            i.prototype.ra = function () {
                (this.U = new y.default(s.gDataSource, this.generalControllers, this.la.bind(this))).run()
            }
            ,
            i.prototype.ha = function () {
                (this.U = new M.default(s.gDataSource, this.generalControllers, this.la.bind(this))).run(this.Nh)
            }
            ,
            i.prototype.ua = function (t) {
                var i = new r.ToNormalSpinTransition;
                i.run({
                    generalControllers: this.generalControllers,
                    loadingController: this.na
                }, function () {
                    i.destroy(),
                        t && t()
                })
            }
            ,
            i.prototype.aa = function (t) {
                var i = new r.ToRespinTransition;
                i.run({
                    generalControllers: this.generalControllers,
                    loadingController: this.na
                }, function () {
                    i.destroy(),
                        t && t()
                })
            }
            ,
            __decorate([k], i)
    }(cc.Component);
n.default = R,
    module.exports = n
