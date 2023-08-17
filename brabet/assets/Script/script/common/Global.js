let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = function() {
    function e() {
        this.gs_time_diff = 0
    }
    return e.prototype.get_gs_time = function() {
        return Math.round(Date.now() / 1e3) + this.gs_time_diff
    }
    ,
    e.prototype.getRoomController = function() {
        return this.roomController
    }
    ,
    e.prototype.setRoomController = function(e) {
        this.roomController = e
    }
    ,
    e.prototype.getTableController = function() {
        return this.tableController
    }
    ,
    e.prototype.setTableController = function(e) {
        this.tableController = e
    }
    ,
    e.prototype.getRoomMsgController = function() {
        return this.roomMsgController
    }
    ,
    e.prototype.setRoomMsgController = function(e) {
        this.roomMsgController = e
    }
    ,
    e.prototype.getGameMsgController = function() {
        return this.gameMsgController
    }
    ,
    e.prototype.setGameMsgController = function(e) {
        this.gameMsgController = e
    }
    ,
    e.prototype.getRoomModel = function() {
        return this.roomModel
    }
    ,
    e.prototype.setRoomModel = function(e) {
        this.roomModel = e
    }
    ,
    e.prototype.getTableModel = function() {
        return this.tableModel
    }
    ,
    e.prototype.setTableModel = function(e) {
        this.tableModel = e
    }
    ,
    e.prototype.getMegHandleBase = function() {
        return this.MegHandleBase
    }
    ,
    e.prototype.setMegHandleBase = function(e) {
        this.MegHandleBase = e
    }
    ,
    e.prototype.setReconnectGameTime = function() {
        this.reconnectGameTime = Date.now() / 1e3
    }
    ,
    e.prototype.getReconnectGameTime = function() {
        return this.reconnectGameTime
    }
    ,
    e.prototype.setLoadGameTime = function() {
        this.loadGameTime = Date.now() / 1e3
    }
    ,
    e.prototype.getLoadGameTime = function() {
        return this.loadGameTime
    }
    ,
    e
}();
n.default = o,
module.exports = n
