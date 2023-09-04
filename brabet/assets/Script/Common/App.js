let e = {}
let n = {}
var o;
Object.defineProperty(n, "__esModule", {
    value: true
});
var i = require("../script/common/NativeMgr")
    , a = require("./Base/BaseClass")
    , r = require("./Base/FormManager")
    , s = require("./DB/LaunchManager")
    , c = require("./Mgr/ClientConfigManager")
    , l = require("./Mgr/ConfirmManager")
    , p = require("./Mgr/ControlManager")
    , d = require("./Mgr/LocalDataManager")
    , h = require("./Mgr/CompressStorageMgr")
    , u = require("./Mgr/SysDataManager")
    , _ = require("./Mgr/SysNotifyManager")
    , m = require("./Mgr/TestManager")
    , f = require("./Net/HttpRequest")
    , g = require("./Net/HttpServerManager")
    , y = require("./Util/ComTool")
    , v = require("../script/i18n_script/LanguageData")
    , C = require("./DB/LoginManager")
    , I = require("./DB/Hall/VIPManager")
    , E = require("./DB/Hall/BetBonusManager")
    , S = require("./DB/Hall/LoseWaiverManager")
    , b = require("./DB/Hall/HallManager")
    , M = require("./DB/Hall/CashOutManager")
    , G = require("./Mgr/UserManager")
    , T = require("./DB/Hall/StoreManager")
    , N = require("./DB/Hall/ActivityManager")
    , D = require("./DB/Hall/WheelManager")
    , R = require("./DB/Hall/WorldCup/WorldCupManager")
    , O = require("./DB/LanguageManager")
    , L = require("./Mgr/LogManager")
    , A = require("./Mgr/SoundManager")
    , B = require("./DB/Hall/Task/TaskManager")
    , U = require("./Net/GameServerManager")
    , P = require("./DB/GameConfigManager")
    , w = require("./DB/Hall/GoldRewardManager")
    , k = require("./DB/LoadTextManager")
    , F = require("./DB/HGameManager")
    , H = require("./DB/NotifyManager")
    , x = require("./DB/RoomManager")
    , W = require("./DB/ExternGameManager")
    , V = require("./DB/HNoticeManager")
    , j = require("./DB/Hall/MenuManager")
    , J = require("./DB/Hall/PromoteMainManager")
    , Y = require("../script/common/GameManager")
    , q = require("./DB/Hall/GameTypeManager")
    , z = require("./DB/Hall/GameListManager")
    , K = require("./DB/Hall/Email/EmailManager")
    , X = require("./DB/Hall/RedDotManager")
    , Z = require("./Mgr/ResManager")
    , Q = require("./Mgr/KeyManager")
    , $ = require("./DB/FacebookManager")
    , ee = require("./Util/ComUtil")
    , te = require("./Util/StringUtil")
    , ne = require("./Util/TimeUtil")
    , oe = require("./Util/ChatUtil")
    , ie = require("./Util/MathUtil")
    , ae = require("./DB/EventTrackManager")
    , re = require("./DB/GoogleAnalyticsManager")
    , se = require("./DB/GoogleLoginManager")
    , ce = require("./DB/PushTrackRecordManager")
    , le = require("./Base/ClickInterceptorHelp")
    , pe = require("./Mgr/InteractionMgr")
    , de = require("./DB/Hall/SupportManager")
    , he = require("../script/common_hall/HallMessageCenter")
    , ue = require("../script/common_room/RoomMessageCenter")
    , _e = require("./DB/AdjustEventTrackManager")
    , me = require("./DB/WebClientManager")
    , fe = require("./DB/DemoServerManager")
    , ge = require("./Net/GoServerManager")
    , ye = require("./Base/SubGameLoadManager")
    , ve = require("./Mgr/EffectMgr")
    , Ce = require("./DB/PageTrackManager")
    , Ie = require("./Base/GameEventMgr")
    , Ee = require("./Base/VibrationMgr")
    , Se = require("./Util/ScoreUtil")
    , be = require("./Util/ImageUtil")
    , Me = require("./DB/PlaceholderManager")
    , Ge = require("../script/HallScene/Guide/GuideManager")
    , Te = require("./DB/GoogleReCaptChaManager")
    , Ne = require("./DB/IndexManager")
    , De = require("./DB/Hall/Store2Manager")
    , Re = require("./DB/Hall/Store3Manager")
    , Oe = require("./DB/TextManager")
    , Le = require("./DB/PixelManager")
    , Ae = require("./DB/CameraMgr")
    , Be = require("./Mgr/CommonComponentMgr/GameBetCommonMgr")
    , Ue = require("./DB/AISupportManager");
new (function (t) {
    function n() {
        var n = t.call(this) || this;
        return n.BaseClass = a.BaseClass,
            n.Client = null,
            n.JS_Name = "App",
            n.GetGlobal().app = n,
            n.require = e,
            n
    }
    return __extends(n, t),
        n.prototype.GetGlobal = function () {
            if ("undefined" != typeof self)
                return self;
            if ("undefined" != typeof window)
                return window;
            if ("undefined" != typeof globalThis)
                return globalThis;
            throw new Error("unable to locate global object")
        }
        ,
        n.prototype.GetInstance = function (e) {
            if (this.require(e))
                return this.require(e).GetModel();
            this.ErrLog("not find Instance name:%s", e)
        }
        ,
        n.prototype.ControlManager = function () {
            return p.ControlManager.GetInstance()
        }
        ,
        n.prototype.ComTool = function () {
            return y.ComTool.GetInstance()
        }
        ,
        n.prototype.ComUtil = function () {
            return ee.ComUtil.GetInstance()
        }
        ,
        n.prototype.StringUtil = function () {
            return te.StringUtil.GetInstance()
        }
        ,
        n.prototype.TimeUtil = function () {
            return ne.TimeUtil.GetInstance()
        }
        ,
        n.prototype.ScoreUtil = function () {
            return Se.ScoreUtil.GetInstance()
        }
        ,
        n.prototype.MathUtil = function () {
            return ie.MathUtil.GetInstance()
        }
        ,
        n.prototype.ImageUtil = function () {
            return be.default.GetInstance()
        }
        ,
        n.prototype.ChatUtil = function () {
            return oe.ChatUtil.GetInstance()
        }
        ,
        n.prototype.FormManager = function () {
            return r.FormManager.GetInstance()
        }
        ,
        n.prototype.SysDataManager = function () {
            return u.SysDataManager.GetInstance()
        }
        ,
        n.prototype.LocalDataManager = function () {
            return d.LocalDataManager.GetInstance()
        }
        ,
        n.prototype.CompressStorageMgr = function () {
            return h.CompressStorageMgr.GetInstance()
        }
        ,
        n.prototype.TestManager = function () {
            return m.TestManager.GetInstance()
        }
        ,
        n.prototype.NativeMgr = function () {
            return i.NativeMgr.GetInstance()
        }
        ,
        n.prototype.ConfirmManager = function () {
            return l.ConfirmManager.GetInstance()
        }
        ,
        n.prototype.SysNotifyManager = function () {
            return _.SysNotifyManager.GetInstance()
        }
        ,
        Object.defineProperty(n.prototype, "i18n", {
            get: function () {
                return v.default.inst
            },
            enumerable: false,
            configurable: true
        }),
        Object.defineProperty(n.prototype, "emitter", {
            get: function () {
                return o || (o = require("emitter")),
                    o
            },
            enumerable: false,
            configurable: true
        }),
        n.prototype.HttpRequest = function () {
            return f.HttpRequest.GetInstance()
        }
        ,
        n.prototype.HttpServerManager = function () {
            return g.HttpServerManager.GetInstance()
        }
        ,
        n.prototype.GameServerManager = function () {
            return U.GameServerManager.GetInstance()
        }
        ,
        n.prototype.GoServerManager = function () {
            return ge.GoServerManager.GetInstance()
        }
        ,
        n.prototype.LogManager = function () {
            return L.LogManager.GetInstance()
        }
        ,
        n.prototype.EventTrackManager = function () {
            return ae.EventTrackManager.GetInstance()
        }
        ,
        n.prototype.PixelManager = function () {
            return Le.PixelManager.GetInstance()
        }
        ,
        n.prototype.CameraMgr = function () {
            return Ae.CameraMgr.GetInstance()
        }
        ,
        n.prototype.GoogleAnalyticsManager = function () {
            return re.GoogleAnalyticsManager.GetInstance()
        }
        ,
        n.prototype.ResManager = function () {
            return Z.default.GetInstance()
        }
        ,
        n.prototype.ClientConfigManager = function () {
            return c.ClientConfigManager.GetInstance()
        }
        ,
        n.prototype.WebClientManager = function () {
            return me.WebClientManager.GetInstance()
        }
        ,
        n.prototype.LoginManager = function () {
            return C.LoginManager.GetInstance()
        }
        ,
        n.prototype.PlaceholderManager = function () {
            return Me.PlaceholderManager.GetInstance()
        }
        ,
        n.prototype.LanguageManager = function () {
            return O.LanguageManager.GetInstance()
        }
        ,
        n.prototype.TextManager = function () {
            return Oe.TextManager.GetInstance()
        }
        ,
        n.prototype.KeyManager = function () {
            return Q.default.GetInstance()
        }
        ,
        n.prototype.EffectMgr = function () {
            return ve.default.GetInstance()
        }
        ,
        n.prototype.LaunchManager = function () {
            return s.LaunchManager.GetInstance()
        }
        ,
        n.prototype.GameConfigManager = function () {
            return P.GameConfigManager.GetInstance()
        }
        ,
        n.prototype.HGameManager = function () {
            return F.HGameManager.GetInstance()
        }
        ,
        n.prototype.NotifyManager = function () {
            return H.NotifyManager.GetInstance()
        }
        ,
        n.prototype.RoomManager = function () {
            return x.RoomManager.GetInstance()
        }
        ,
        n.prototype.HallMessageCenter = function () {
            return he.HallMessageCenter.GetInstance()
        }
        ,
        n.prototype.RoomMessageCenter = function () {
            return ue.default.GetInstance()
        }
        ,
        n.prototype.ExternGameManager = function () {
            return W.ExternGameManager.GetInstance()
        }
        ,
        n.prototype.DemoServerManager = function () {
            return fe.DemoServerManager.GetInstance()
        }
        ,
        n.prototype.HNoticeManager = function () {
            return V.HNoticeManager.GetInstance()
        }
        ,
        n.prototype.GameManager = function () {
            return Y.GameManager.GetInstance()
        }
        ,
        n.prototype.SubGameLoadManager = function () {
            return ye.SubGameLoadManager.GetInstance()
        }
        ,
        n.prototype.InteractionMgr = function () {
            return pe.InteractionMgr.GetInstance()
        }
        ,
        n.prototype.HallManager = function () {
            return b.HallManager.GetInstance()
        }
        ,
        n.prototype.GameTypeManager = function () {
            return q.GameTypeManager.GetInstance()
        }
        ,
        n.prototype.GameListManager = function () {
            return z.GameListManager.GetInstance()
        }
        ,
        n.prototype.VIPManager = function () {
            return I.VIPManager.GetInstance()
        }
        ,
        n.prototype.BetBonusManager = function () {
            return E.BetBonusManager.GetInstance()
        }
        ,
        n.prototype.LoseWaiverManager = function () {
            return S.LoseWaiverManager.GetInstance()
        }
        ,
        n.prototype.CashOutManager = function () {
            return M.CashOutManager.GetInstance()
        }
        ,
        n.prototype.UserManager = function () {
            return G.UserManager.GetInstance()
        }
        ,
        n.prototype.StoreManager = function () {
            return T.StoreManager.GetInstance()
        }
        ,
        n.prototype.Store2Manager = function () {
            return De.Store2Manager.GetInstance()
        }
        ,
        n.prototype.Store3Manager = function () {
            return Re.Store3Manager.GetInstance()
        }
        ,
        n.prototype.ActivityManager = function () {
            return N.ActivityManager.GetInstance()
        }
        ,
        n.prototype.WheelManager = function () {
            return D.WheelManager.GetInstance()
        }
        ,
        n.prototype.WorldCupManager = function () {
            return R.WorldCupManager.GetInstance()
        }
        ,
        n.prototype.SoundManager = function () {
            return A.SoundManager.GetInstance()
        }
        ,
        n.prototype.VibrationMgr = function () {
            return Ee.VibrationMgr.GetInstance()
        }
        ,
        n.prototype.GameEventMgr = function () {
            return Ie.GameEventMgr.GetInstance()
        }
        ,
        n.prototype.TaskManager = function () {
            return B.TaskManager.GetInstance()
        }
        ,
        n.prototype.GoldRewardManager = function () {
            return w.GoldRewardManager.GetInstance()
        }
        ,
        n.prototype.LoadTextManager = function () {
            return k.LoadTextManager.GetInstance()
        }
        ,
        n.prototype.MenuManager = function () {
            return j.MenuManager.GetInstance()
        }
        ,
        n.prototype.PromoteMainManager = function () {
            return J.PromoteMainManager.GetInstance()
        }
        ,
        n.prototype.EmailManager = function () {
            return K.EmailManager.GetInstance()
        }
        ,
        n.prototype.RedDotManager = function () {
            return X.RedDotManager.GetInstance()
        }
        ,
        n.prototype.FacebookManager = function () {
            return $.FacebookManager.GetInstance()
        }
        ,
        n.prototype.GoogleLoginManager = function () {
            return se.GoogleLoginManager.GetInstance()
        }
        ,
        n.prototype.PushTrackRecordManager = function () {
            return ce.PushTrackRecordManager.GetInstance()
        }
        ,
        n.prototype.ClickInterceptorHelp = function () {
            return le.ClickInterceptorHelp.GetInstance()
        }
        ,
        n.prototype.SupportManager = function () {
            return de.SupportManager.GetInstance()
        }
        ,
        n.prototype.AdjustEventTrackManager = function () {
            return _e.AdjustEventTrackManager.GetInstance()
        }
        ,
        n.prototype.PageTrackManager = function () {
            return Ce.PageTrackManager.GetInstance()
        }
        ,
        n.prototype.GuideManager = function () {
            return Ge.GuideManager.GetInstance()
        }
        ,
        n.prototype.GoogleReCaptChaManager = function () {
            return Te.GoogleReCaptChaManager.GetInstance()
        }
        ,
        n.prototype.IndexManager = function () {
            return Ne.IndexManager.GetInstance()
        }
        ,
        n.prototype.GameBetCommonMgr = function () {
            return Be.GameBetCommonMgr.GetInstance()
        }
        ,
        n.prototype.AISupportManager = function () {
            return Ue.AISupportManager.GetInstance()
        }
        ,
        n
}(a.BaseClass)),
    module.exports = n
//console.error(n)

