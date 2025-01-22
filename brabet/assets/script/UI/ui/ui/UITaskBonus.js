let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
});
var o = require("../../../../Common/Base/BaseForm")
  , i = require("../../../../Common/DB/Hall/Task/TaskManager")
  , a = require("../../../../Common/Define/HttpServerDefine")
  , r = require("../../../../Common/Define/ShareDefine")
  , s = cc._decorator
  , c = s.ccclass
  , l = s.menu
  , p = s.property
  , d = function(e) {
    function t() {
        var t = null !== e && e.apply(this, arguments) || this;
        return t.ui = null,
        t.prefabItem = null,
        t
    }
    return __extends(t, e),
    t.prototype.OnCreateInit = function() {
        this.RegEvent(a.HttpAPI.GET_USER_TASK_CONFIG, this.IsNewPlayer),
        this.RegEvent(a.HttpAPI.TASK_RECEIVE_AWARD, this.RefreshTaskData)
    }
    ,
    t.prototype.OnLoad = function() {
        this.Log("OnLoad")
    }
    ,
    t.prototype.OnShow = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t];
        this.node.active = false,
        this.InitInfo()
    }
    ,
    t.prototype.InitInfo = function() {
        i.TaskManager.GetInstance().RequstGetUserTaskConfig()
    }
    ,
    t.prototype.IsNewPlayer = function(e) {
        this.node.active = true,
        this.taskData = e;
        var t = 0 != e.info.user_info.is_new_task_user;
        this.ui.node_top.active = t,
        this.ui.node_title.active = !t,
        t && (this.ui.tog_novice.getComponent(cc.Toggle).isChecked = true,
        this.ui.tog_cycle.getComponent(cc.Toggle).isChecked = false),
        this.getComponent(cc.Layout).updateLayout(),
        this.taskInfo = e.info.day_task_info,
        this.RefreshBox()
    }
    ,
    t.prototype.RenderRedDot = function() {
        0 != this.taskData.info.user_info.is_new_task_user && (this.ui.node_noviceRedDot.active = this.isShowRed(this.taskData.info.day_task_info),
        this.ui.node_cycleRedDot.active = this.isShowRed(this.taskData.info.keep_task_info))
    }
    ,
    t.prototype.isShowRed = function(e) {
        for (var t = e.task_info.bonus_config.length, n = e.task_info.receive_ids, o = 0, i = 0; i < e.sub_task_list.length; i++)
            1 == e.sub_task_list[i].is_finish && o++;
        for (i = 0; i < t; i++)
            if (o >= e.task_info.bonus_config[i].bonus_task_num) {
                if (!(n.length > 0))
                    return true;
                for (var a = 0; a < n.length && n[a] != i + 1; a++)
                    if (a == n.length - 1)
                        return true
            }
        return false
    }
    ,
    t.prototype.RefreshTaskData = function(e) {
        this.taskInfo.task_info.receive_ids.push(e.bonus_id),
        this.RefreshBox(),
        app.RedDotManager().updateSingleData({
            type: r.RedDotStr.task_red,
            bShow: false
        })
    }
    ,
    t.prototype.RefreshBox = function() {
        var e = this.taskInfo;
        this.ui.node_boxes.removeAllChildren();
        for (var t = e.task_info.bonus_config.length, n = e.task_info.bonus_config[t - 1].bonus_task_num, o = this.ui.node_boxes.width / n, i = e.task_info.receive_ids, a = 0, r = 0; r < e.sub_task_list.length; r++)
            1 == e.sub_task_list[r].is_finish && a++;
        for (r = 0; r < t; r++) {
            var s = e.task_info.bonus_config[r]
              , c = cc.instantiate(this.ui.node_boxItem);
            if (c.active = true,
            c.children[0].active = false,
            c.children[1].active = false,
            c.children[2].active = false,
            a < s.bonus_task_num)
                c.children[2].active = true;
            else if (i.length > 0)
                for (var l = 0; l < i.length; l++) {
                    if (i[l] == r + 1) {
                        c.children[0].active = true;
                        break
                    }
                    l == i.length - 1 && (c.children[1].active = true)
                }
            else
                c.children[1].active = true;
            var p = app.GameConfigManager().GetCurrency;
            c.children[3].getComponent(cc.Label).string = "" + p + s.bonus_gold;
            var d = a < s.bonus_task_num ? a : s.bonus_task_num;
            c.children[4].children[0].getComponent(cc.Label).string = d + "/" + s.bonus_task_num,
            c.x = s.bonus_task_num * o,
            c.children[1].getComponent(cc.Button) || c.children[1].addComponent(cc.Button),
            c.children[1].on("click", this.SendGetBox.bind(this, r, e), this),
            this.ui.node_boxes.addChild(c)
        }
        var h = a / n;
        this.RefreshProBarExp(h),
        this.RefreshList(),
        this.RefreshRichText(),
        this.RenderRedDot()
    }
    ,
    t.prototype.RefreshProBarExp = function(e) {
        this.ui.progressBar_exp.progress = e
    }
    ,
    t.prototype.SendGetBox = function(e, t) {
        var n = t.task_info.bonus_config[e].bonus_id
          , o = t.task_info.task_id
          , a = t.task_info.task_type;
        i.TaskManager.GetInstance().RequstGetTaskRecvieAward(n, o, a)
    }
    ,
    t.prototype.RefreshList = function() {
        var e = this.taskInfo;
        this.ui.node_content.removeAllChildren(),
        this.taskInfo.sub_task_list.sort(function(e, t) {
            return e.is_finish - t.is_finish
        });
        for (var t = 0; t < e.sub_task_list.length; t++) {
            var n = e.sub_task_list[t]
              , o = cc.instantiate(this.prefabItem);
            this.ui.node_content.addChild(o),
            o.addComponent(this.prefabItem.name),
            o.getComponent(this.prefabItem.name).SetItemData(n)
        }
    }
    ,
    t.prototype.RefreshRichText = function() {
        this.ui.node_richtext.getComponent(cc.RichText).string = this.taskInfo.task_info.task_content
    }
    ,
    t.prototype.OnClick = function(e, t) {
        return t == this.ui.tog_novice ? (this.taskInfo = this.taskData.info.day_task_info,
        void this.RefreshBox()) : t == this.ui.tog_cycle ? (this.taskInfo = this.taskData.info.keep_task_info,
        void this.RefreshBox()) : undefined
    }
    ,
    t.prototype.OnClose = function() {
        for (var e = [], t = 0; t < arguments.length; t++)
            e[t] = arguments[t]
    }
    ,
    __decorate([p(cc.Prefab)], t.prototype, "prefabItem", undefined),
    __decorate([c, l("UI/TaskBonus/UITaskBonus")], t)
}(o.default);
n.default = d,
module.exports = n
