let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.Singleton = undefined;
var o = function(e) {
    function t() {
        return null !== e && e.apply(this, arguments) || this
    }
    return __extends(t, e),
    t.GetInstance = function() {
        return this._instance || (this._instance = new this),
        this._instance
    }
    ,
    t
}(require("./BaseClass").BaseClass);
n.Singleton = o
module.exports = n