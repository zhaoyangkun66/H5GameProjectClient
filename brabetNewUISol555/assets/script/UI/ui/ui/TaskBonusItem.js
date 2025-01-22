let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/UIBaseComponent")
  , i = cc._decorator
  , a = i.ccclass
  , r = i.menu
  , s = (i.property,
function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnLoadInit = function() {
        this.JS_Name = "TaskBonusItem"
    }
    ,
    t.prototype.SetItemData = function(e) {
        this.task = e;
        var t = e.target_val
          , n = e.cur_val < t ? e.cur_val : t;
        this.ui.label_task.string = e.title,
        this.ui.progressBar_exp.progress = n / t,
        this.ui.label_num.string = n + "/" + t,
        1 == this.ui.progressBar_exp.progress ? (this.ui.node_ok.active = true,
        this.ui.btn_go.active = false) : (this.ui.node_ok.active = false,
        this.ui.btn_go.active = e.inside_link > 0)
    }
    ,
    t.prototype.OnClick = function(e, t) {
        t != this.ui.btn_go || app.InteractionMgr().SendWndEvent(this.task.inside_link)
    }
    ,
    __decorate([a, r("UI/TaskBonus/TaskBonusItem")], t)
}(o.default));
n.default = s,
module.exports = n
