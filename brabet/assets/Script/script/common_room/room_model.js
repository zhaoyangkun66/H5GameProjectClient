let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = function() {
    function e() {
        this.owner = {},
        this.room_no = 0,
        this.type = 1,
        this.members = [],
        this.member_num = 0,
        this.creator_uno = 0,
        this.create_time = 0,
        this.GameBeginTime = 0,
        this.RoundBeginTime = 0,
        this.RoundEndTime = 0,
        this.RoomAccId = 0,
        this.MatchCDTime = 0,
        this.start_mode = 0,
        this.state = 1,
        this.conf = {},
        this.gameSubSettings = null,
        this.gameSettings = {},
        this.DestroyDeclarePlayerID = 0,
        this.DestroyBeginTick = 0,
        this.WinMulti = 0,
        this.startTime = 0,
        this.roomDestory = false,
        this.Observer = null
    }
    return e.prototype.SetSubGameSettings = function(e) {
        this.gameSubSettings = e
    }
    ,
    e.prototype.Init = function(e) {
        for (var t in e)
            e.hasOwnProperty(t) && (this[t] = e[t]);
        this.members = e.players,
        this.member_num = e.player_num
    }
    ,
    e.prototype.get_roomNo = function() {
        return this.room_no
    }
    ,
    e.prototype.get_gameType = function() {
        return this.type
    }
    ,
    e.prototype.add_member = function(e) {
        this.members.push(e)
    }
    ,
    e.prototype.get_members = function() {
        return this.members
    }
    ,
    e.prototype.get_member = function(e) {
        for (var t = 0; t < this.members.length; t++)
            if (this.members[t].uid == e)
                return this.members[t];
        return null
    }
    ,
    e.prototype.get_memberBySeat = function(e) {
        for (var t = 0; t < this.members.length; t++)
            if (this.members[t].seat == e)
                return this.members[t];
        return null
    }
    ,
    e.prototype.del_member = function(e) {
        for (var t = 0; t < this.members.length; t++)
            if (this.members[t].uid == e) {
                this.members.splice(t, 1);
                break
            }
    }
    ,
    e.prototype.change_seat = function(e, t) {
        var n = this.get_member(e);
        n && (n.seat = t)
    }
    ,
    e.prototype.delete_all_member = function() {
        this.members.splice(0, this.members.length)
    }
    ,
    e.prototype.getAllMemberReady = function() {
        for (var e = this.get_members(), t = 0; t < e.length; t++)
            if (0 != e[t].uid && !e[t].ready && e[t].uid != this.get_creator())
                return false;
        return true
    }
    ,
    e.prototype.get_curConfig = function() {
        return this.conf
    }
    ,
    e.prototype.get_creator = function() {
        return this.creator_uno
    }
    ,
    e.prototype.getSeatInView = function(e, t, n, o) {
        var i = app.UserManager().GetUserInfo.uid;
        return null == this.get_member(i) ? null : (e - t + n - 1 + o) % o + 1
    }
    ,
    e.prototype.SwitchViewSeat = function(e) {
        if ((e = e >= 8 ? e - 8 : e) < 0 || e >= this.conf.pnum_type || null == e)
            return null;
        var t = app.UserManager().GetUserInfo.uid
          , n = this.get_member(t);
        return null == n ? null : (e - (n.seat >= 8 ? n.seat - 8 : n.seat) + this.conf.pnum_type) % this.conf.pnum_type
    }
    ,
    e.prototype.SwitchViewSeat1 = function(e) {
        if ((e = e >= 8 ? e - 8 : e) < 0 || e >= this.conf.pnum_type || null == e)
            return null;
        var t = app.UserManager().GetUserInfo.uid
          , n = this.get_member(t);
        return null == n ? null : ((n.seat >= 8 ? n.seat - 8 : n.seat) - e + this.conf.pnum_type) % this.conf.pnum_type
    }
    ,
    e.prototype.get_viewSeat = function(e) {
        var t = this.get_member(e);
        return t ? this.SwitchViewSeat1(t.seat) : null
    }
    ,
    e.prototype.get_viewSeatByID = function(e) {
        var t = this.get_member(e);
        return t ? this.SwitchViewSeat(t.seat) : null
    }
    ,
    e.prototype.get_startMode = function() {
        return this.start_mode
    }
    ,
    e.prototype.get_roomSetting = function() {
        return null == this.gameSettings ? null : this.gameSettings
    }
    ,
    e.prototype.get_gun = function() {
        return null == this.gameSettings ? 0 : this.gameSettings.Fire
    }
    ,
    e.prototype.getFastCompare = function() {
        return null != this.gameSettings && 1 == this.gameSettings.FastCompare
    }
    ,
    e.prototype.getBankerType = function() {
        return null == this.gameSettings ? 0 : this.gameSettings.BankerType
    }
    ,
    e.prototype.getBankerLimitSecond = function() {
        return null == this.gameSettings ? 0 : this.gameSettings.CommonSettings.BankerLimitSecond
    }
    ,
    e.prototype.getLimitSecond = function() {
        return null == this.gameSettings ? 0 : this.gameSettings.CommonSettings.LimitSecond
    }
    ,
    e.prototype.getBetMaxMulti = function() {
        return null == this.gameSettings ? 1 : this.gameSettings.BetMaxMulti
    }
    ,
    e.prototype.GetRoomState = function() {
        return this.state
    }
    ,
    e.prototype.SetRoomState = function(e) {
        this.state = e
    }
    ,
    e.prototype.getRoomOwner = function() {
        return this.owner
    }
    ,
    e.prototype.GetRoomDestory = function() {
        return this.roomDestory
    }
    ,
    e.prototype.SetRoomDestory = function(e) {
        this.roomDestory = e
    }
    ,
    e.prototype.GetDestroyDeclarePlayerID = function() {
        return this.DestroyDeclarePlayerID
    }
    ,
    e.prototype.GetDestroyBeginTick = function() {
        return this.DestroyBeginTick
    }
    ,
    e.prototype.GetMaxMemberCount = function() {
        return this.conf.pnum_type
    }
    ,
    e.prototype.isWatcher = function(e) {
        var t = this.get_member(e);
        return null == t ? null : t.seat >= 8
    }
    ,
    e.prototype.getPlayerSex = function(e) {
        var t = this.get_member(e);
        return null == t ? null : t.sex
    }
    ,
    e
}();
n.default = o,
module.exports = n
