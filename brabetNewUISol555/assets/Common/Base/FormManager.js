let n = {}
Object.defineProperty(n, "__esModule", {
    value: true
}),
    n.FormManager = undefined;
var o = require("../Bundle/BundleManager"),
    i = require("../Define/EventWaitType"),
    a = require("../Define/FormDefine"),
    r = require("../Define/ShareDefine"),
    s = require("./BaseForm"),
    c = function (e) {
        function t() {
            var t = e.call(this) || this;
            return t.form = null,
                t.ControlManager = app.ControlManager(),
                t.queueShowDict = {},
                t.NoneIndependentForm = [],
                t.JS_Name = "FormManager",
                t.form = app.SysDataManager().GetTableDict(a.FormDefine.Form),
                t.createFormDict = {},
                t.creatingFormDict = {},
                t.showFormList = [],
                t.queueShowDict = {},
                t.Log("Init"),
                t
        }
        return __extends(t, e),
            t.prototype.DingDingMessage = function () { },
            t.prototype.GetShowFormList = function () {
                return this.showFormList
            },
            t.prototype.CreateForm = function (e) {
                var t = this;
                if (this.createFormDict.hasOwnProperty(e)) {
                    this.Log("窗口已经创建  无需重复创建 form:", e);
                    var n = this.createFormDict[e].getComponent(s.default);
                    return Promise.resolve(n)
                }
                if (!this.form.hasOwnProperty(e))
                    return this.ErrLog("LoadForm Form.csv not find (%s)", e),
                        Promise.resolve(null);
                if (this.creatingFormDict.hasOwnProperty(e))
                    return this.SysLog("界面正在加载中  请等待加载完成开启 (%s)", e),
                        Promise.resolve(null);
                this.creatingFormDict[e] = 1;
                var i = this.form[e],
                    a = i.FormPath,
                    r = i.bundleName;
                return this.SysLog("准备创建界面, formName:(%s)", e), (r ? o.BundleManager.LoadAssets(a, r, cc.Prefab) : this.ControlManager.CreateLoadPromise(a, cc.Prefab, false)).then(function (n) {
                    if (delete t.creatingFormDict[e], !n)
                        return t.ErrLog("资源加载失败(%s) 无法创建界面.", e),
                            null;
                    var o = cc.instantiate(n),
                        a = o.getComponent(s.default);
                    if (!a)
                        return t.ErrLog("创建界面找不到对应组件(%s) not find Component", e),
                            null;
                    try {
                        return a.OnCreate(i),
                            a.constructor.name != e && t.WarnLog("prefab上添加的控件名称和打开的界面formName 不相同,可能会出现未知问题 %s !=%s", a.constructor.name, e),
                            t.SysLog("界面创建成功, formName:(%s)", e),
                            t.createFormDict[e] = o,
                            a
                    } catch (r) {
                        return t.ErrLog("创建界面失败", r),
                            t.DingDingMessage("界面初始化错误:" + e, r.stack),
                            null
                    }
                }).catch(function (n) {
                    delete t.creatingFormDict[e],
                        t.ErrLog("创建界面失败", n),
                        t.DingDingMessage("创建界面失败 :" + e, "")
                })
            },
            t.prototype.ShowForm = function () {
                for (var e = this, t = [], n = 0; n < arguments.length; n++)
                    t[n] = arguments[n];
                if (!t.length)
                    return this.ErrLog("打开界面至少传入一个参数"),
                        Promise.resolve(null);
                var o = t.shift();
                if (this.AddShowingForm(o),
                    this.createFormDict.hasOwnProperty(o)) {
                    var a = this.createFormDict[o],
                        r = a.getComponent(s.default);
                    return r.ShowForm(t),
                        Promise.resolve(r)
                }
                return app.Client.OnEvent("ModalLayer", i.EventWaitType.CreateFormBegin),
                    this.CreateForm(o).then(function (n) {
                        return app.Client.OnEvent("ModalLayer", i.EventWaitType.CreateFormEnd),
                            n && e.showFormList.indexOf(o) >= 0 && n.ShowForm(t),
                            n
                    }).catch(function (t) {
                        e.ErrLog("err", t),
                            app.Client.OnEvent("ModalLayer", i.EventWaitType.CreateFormEnd),
                            e.DingDingMessage("界面开启失败:" + o, "")
                    })
            },
            t.prototype.FormVisible = function (e, t) {
                t ? this.ShowForm(e) : this.CloseForm(e)
            },
            t.prototype.CloseForm = function (e, t) {
                if (this.RemoveShowingForm(e),
                    this.createFormDict.hasOwnProperty(e)) {
                    var n = this.createFormDict[e];
                    if (n) {
                        var o = n.getComponent(s.default);
                        o ? o.CloseForm(t) : this.ErrLog("界面组件不存在 not find :%s", e)
                    } else
                        this.ErrLog("界面加载失败 (%s) null", e)
                }
            },
            t.prototype.IsDependentForm = function (e) {
                var t = this.form[e];
                return !!t && (t.Independent == r.FormType.Independent || t.Independent == r.FormType.IndependentGame)
            },
            t.prototype.AddNoneIndependentForm = function (e) {
                var t = this,
                    n = this.form[e];
                n && (n.Independent != r.FormType.Hall && n.Independent != r.FormType.HallGame || (this.NoneIndependentForm.forEach(function (n) {
                    n != e && t.CloseForm(n)
                }),
                    this.NoneIndependentForm = [e]))
            },
            t.prototype.GetFormComponent = function (e) {
                return this.createFormDict.hasOwnProperty(e) ? this.createFormDict[e].getComponent(e) : (this.Log("GetFormComponent(%s) not load", e),
                    null)
            },
            t.prototype.IsFormShow = function (e) {
                return this.showFormList.indexOf(e) >= 0 && this.createFormDict.hasOwnProperty(e)
            },
            t.prototype.IsSupportVisitor = function (e) {
                var t = this.form[e];
                return t ? t.SupportVisitor : 0
            },
            t.prototype.AddShowingForm = function (e) {
                this.showFormList.indexOf(e) < 0 && this.showFormList.push(e),
                    this.AddNoneIndependentForm(e)
            },
            t.prototype.RemoveShowingForm = function (e) {
                var t = this.showFormList.indexOf(e);
                t >= 0 && this.showFormList.splice(t, 1)
            },
            t.prototype.DestroyForm = function (e) {
                this.createFormDict.hasOwnProperty(e) && delete this.createFormDict[e]
            },
            t.prototype.DestroyAllForm = function () {
                var e = this;
                Object.keys(this.createFormDict).forEach(function (t) {
                    e.DestroyForm(t)
                })
            },
            t.prototype.CloseAllForm = function () {
                for (var e = this.showFormList.slice(), t = 0; t < e.length; t++)
                    this.CloseForm(e[t], "ExitScene")
            },
            t.prototype.CloseAllFormExcept = function (e) {
                var t = [];
                e.forEach(function (e) {
                    t.push(e)
                });
                for (var n = this.showFormList.slice(), o = 0; o < n.length; o++) {
                    var i = n[o]; - 1 == t.indexOf(i) && this.CloseForm(i, "ExitScene")
                }
            },
            t.prototype.CloseIndependentForm = function (e) {
                for (var t = 0; t < this.showFormList.length; t++) {
                    var n = this.showFormList[t];
                    this.IsDependentForm(n) && !e.InArray(n) && this.CloseForm(n)
                }
            },
            t.prototype.ChangeToFormList = function (e) {
                var t = this;
                return this.CreateFormList(e).then(function () {
                    t.SysLog("切换到房间列表  关闭当前所有界面:", t.showFormList, e),
                        t.ClearQueueForm(),
                        t.CloseAllFormExcept(e);
                    for (var n = 0; n < e.length; n++)
                        t.ShowForm(e[n])
                })
            },
            t.prototype.CreateFormList = function (e) {
                for (var t = [], n = 0; n < e.length; n++) {
                    var o = e[n];
                    this.createFormDict.hasOwnProperty(o) || t.push(this.CreateForm(o))
                }
                return t.length > 0 ? (app.Client.OnEvent("ModalLayer", i.EventWaitType.CreateFormBegin),
                    this.SysLog("创建界面列表"),
                    Promise.all(t).then(function () {
                        app.Client.OnEvent("ModalLayer", i.EventWaitType.CreateFormEnd)
                    }).catch(function () {
                        app.Client.OnEvent("ModalLayer", i.EventWaitType.CreateFormEnd)
                    })) : Promise.resolve()
            },
            t.prototype.EnqueueForm = function (e) {
                var t = e.formName,
                    n = e.key,
                    o = e.argumentsList,
                    i = this.queueShowDict.SetDefault(n, []);
                if (0 == i.length) {
                    var a = [t].concat(o);
                    this.ShowForm.apply(this, a)
                }
                for (var r = 0; r < i.length; r++)
                    if (i[r].formName == t)
                        return;
                var s = {
                    formName: t,
                    argList: o
                };
                i.push(s)
            },
            t.prototype.ShowNextQueueForm = function (e) {
                var t = this.queueShowDict.SetDefault(e, []);
                if (t.shift(),
                    t.length > 0) {
                    var n = t[0],
                        o = [n.formName].concat(n.argList);
                    this.ShowForm.apply(this, o)
                } else
                    app.Client.OnEvent("SuccessionFinish", {
                        key: e
                    })
            },
            t.prototype.InsertForm = function (e) {
                var t = e.formName,
                    n = e.key,
                    o = e.argumentsList,
                    i = this.queueShowDict.SetDefault(n, []);
                if (0 == i.length) {
                    var a = [t].concat(o);
                    this.ShowForm.apply(this, a)
                }
                for (var r = 0; r < i.length; r++)
                    if (i[r].formName == t)
                        return;
                var s = {
                    formName: t,
                    argList: o
                };
                i.splice(1, 0, s)
            },
            t.prototype.ClearQueueForm = function (e) {
                e ? this.queueShowDict[e] = [] : this.queueShowDict = {}
            },
            t
    }(require("./Singleton").Singleton);
n.FormManager = c,
    module.exports = n
