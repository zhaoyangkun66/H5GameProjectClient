let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = function() {
    function e(e, t, n) {
        this.view = e,
        this.roomModel = t,
        this.tableModel = n
    }
    return e.prototype.init = function() {
        cc.mg.global.setRoomController(this),
        this.register_events()
    }
    ,
    e.prototype.destroy = function() {
        this.view = null,
        cc.mg.global.setRoomController(null),
        this.unregister_events()
    }
    ,
    e.prototype.register_events = function() {}
    ,
    e.prototype.unregister_events = function() {}
    ,
    e.prototype.GetMaxMemberCount = function() {
        return this.roomModel.GetMaxMemberCount()
    }
    ,
    e.prototype.GetStartMode = function() {
        return this.roomModel.get_startMode()
    }
    ,
    e.prototype.GetCreator = function() {
        return this.roomModel.get_creator()
    }
    ,
    e.prototype.GetMember = function(e) {
        return this.roomModel.get_member(e)
    }
    ,
    e.prototype.GetRoomState = function() {
        return this.roomModel.GetRoomState()
    }
    ,
    e.prototype.GetBankerType = function() {
        return this.roomModel.getBankerType()
    }
    ,
    e.prototype.GetBetMaxMulti = function() {
        return this.roomModel.getBetMaxMulti()
    }
    ,
    e.prototype.SwitchViewSeat = function(e) {
        this.roomModel.SwitchViewSeat(e)
    }
    ,
    e.prototype.ProcessBtnReadyClick = function(e) {
        var t = cc.mg.global.getTableModel()
          , n = cc.mg.global.getRoomMsgController();
        if (t.GetIsEndGame())
            this.view.showEndGamePanel();
        else {
            if (t.GetCurRound() > 0)
                n.SendNextRoundReady();
            else if (0 != this.GetStartMode() && this.GetCreator() == app.UserManager().GetUserInfo.uid) {
                if (this.roomModel.get_members().length < 2)
                    return void app.SysNotifyManager().ShowToast("\u4eba\u6570\u4e0d\u8db3\u65e0\u6cd5\u5f00\u59cb\uff01");
                if (!this.roomModel.getAllMemberReady())
                    return void app.SysNotifyManager().ShowToast("\u8bf7\u7b49\u5f85\u6240\u6709\u73a9\u5bb6\u51c6\u5907\uff01");
                n.quest_StartGame()
            } else
                n.SendReady();
            e.target.active = false
        }
    }
    ,
    e.prototype.ProcessBtnStartClick = function() {
        cc.mg.global.getRoomMsgController().SendReqStartGame()
    }
    ,
    e
}();
n.default = o,
module.exports = n
