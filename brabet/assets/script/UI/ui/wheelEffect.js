let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../Common/Base/UIBaseComponent")
  , i = require("../../../Common/Define/GameEventDefine")
  , a = cc._decorator
  , r = a.ccclass
  , s = a.property
  , c = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.spinNode = null,
        t.wheelSp = null,
        t.gearNum = 12,
        t.maxSpeed = 12,
        t.duration = 3,
        t.acc = .1,
        t.targetID = 0,
        t.springBack = false,
        t.PlayResultName = "",
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.gearAngle = 360 / this.gearNum,
        this.PlayResultName = app.ComTool().H5Platform() ? "result_V" : "result_H"
    }
    ,
    t.prototype.OnEnable = function() {
        this.wheelState = 0,
        this.curSpeed = 0,
        this.spinTime = 0,
        this.finalAngle = 0,
        this.wheelSp.angle = 0
    }
    ,
    t.prototype.SetTargetIDAngle = function(e) {
        this.Log(e),
        0 === this.wheelState && (this.wheelState = 1,
        this.decAngle = 720,
        this.curSpeed = 0,
        this.spinTime = 0,
        this.OnSpinNodeShow(true),
        this.finalAngle = (e - 1) * this.gearAngle,
        this.springBack && (this.finalAngle -= this.gearAngle))
    }
    ,
    t.prototype.OnSpinNodeShow = function(e) {
        e ? this.spinNode.getComponent(cc.Animation).stop() : this.spinNode.getComponent(cc.Animation).play(),
        this.GetWndNode("btn_spin_click", this.spinNode).active = e
    }
    ,
    t.prototype.OnUpdate = function(e) {
        if (0 !== this.wheelState)
            if (1 == this.wheelState)
                if (this.spinTime += e,
                this.wheelSp.angle -= this.curSpeed,
                this.curSpeed <= this.maxSpeed)
                    this.curSpeed += this.acc;
                else {
                    if (this.spinTime < this.duration)
                        return;
                    this.maxSpeed = this.curSpeed,
                    this.springBack && (this.finalAngle += this.gearAngle),
                    this.wheelSp.angle = this.finalAngle,
                    this.wheelState = 2
                }
            else if (2 == this.wheelState) {
                var t = this.wheelSp.angle
                  , n = t - this.finalAngle;
                if (this.curSpeed = this.maxSpeed * ((this.decAngle + n) / this.decAngle),
                this.wheelSp.angle = t - this.curSpeed,
                this.decAngle + n <= 3)
                    if (this.wheelState = 0,
                    this.wheelSp.angle = this.finalAngle,
                    this.springBack) {
                        var o = cc.rotateBy(.6, this.gearAngle)
                          , i = cc.sequence(cc.delayTime(.2), o, cc.callFunc(this.showRes, this));
                        this.wheelSp.runAction(i)
                    } else
                        this.showRes()
            }
    }
    ,
    t.prototype.showRes = function() {
        this.OnSpinNodeShow(false),
        this.node.parent.getComponent(cc.Animation).play(this.PlayResultName),
        app.RoomManager().SetWheelAnimation(false),
        app.Client.OnEvent(i.GameEventDefine.UPDATE_USER_INFO)
    }
    ,
    t.prototype.OnDisable = function() {
        this.wheelState = 0,
        this.OnSpinNodeShow(false),
        this.node.parent.getComponent(cc.Animation).stop(this.PlayResultName)
    }
    ,
    __decorate([s({
        tooltip: "spin\u8282\u70b9",
        type: cc.Node
    })], t.prototype, "spinNode", undefined),
    __decorate([s({
        tooltip: "\u8f6e\u76d8\u8282\u70b9",
        type: cc.Node
    })], t.prototype, "wheelSp", undefined),
    __decorate([s({
        tooltip: "\u8f6e\u76d8\u683c\u5b50\u6570\u91cf"
    })], t.prototype, "gearNum", undefined),
    __decorate([s({
        tooltip: "\u6700\u5927\u901f\u5ea6"
    })], t.prototype, "maxSpeed", undefined),
    __decorate([s({
        tooltip: "\u51cf\u901f\u524d\u65cb\u8f6c\u65f6\u95f4"
    })], t.prototype, "duration", undefined),
    __decorate([s({
        tooltip: "\u52a0\u901f\u5ea6"
    })], t.prototype, "acc", undefined),
    __decorate([s({
        tooltip: "\u65cb\u8f6c\u7ed3\u675f\u662f\u5426\u56de\u5f39"
    })], t.prototype, "springBack", undefined),
    __decorate([r], t)
}(o.default);
n.default = c,
module.exports = n
