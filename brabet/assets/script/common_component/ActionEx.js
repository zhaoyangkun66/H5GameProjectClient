cc.Shake = cc.Class({
    name: 'cc.Shake',
    extends: cc.ActionInterval,

    ctor: function (duration, strength) {
        duration !== undefined && cc.Shake.prototype.initWithDuration.call(this, duration, strength, strength);
    },

    initWithDuration: function (duration, strength_x, strength_y) {
        if (cc.ActionInterval.prototype.initWithDuration.call(this, duration)) {
            this.m_strength_x = strength_x;
            this.m_strength_y = strength_y;
            return true;
        }
        return false;
    },

    clone: function () {

    },

    startWithTarget: function (target) {
        cc.ActionInterval.prototype.startWithTarget.call(this, target);
        this.m_initial_x = target.x;
        this.m_initial_y = target.y;
        this.time = 0;
    },

    update: function (dt) {
        this.time = this.time + dt
        let randx = Math.sin(this.time * 1.2) * this.m_strength_x
        let randy = Math.sin(this.time * 1.5) * this.m_strength_y;
        this.target.setPosition(cc.v2(this.m_initial_x, this.m_initial_y).add(cc.v2(randx, randy)))
    },

    stop: function () {
        this.target.setPosition(this.m_initial_x, this.m_initial_y);
        cc.ActionInterval.prototype.stop.call(this);
    },

    reverse: function () {

    },

});

cc.shake = function (duration, strength) {
    return new cc.Shake(duration, strength);
};

cc.RotateBytest = cc.Class({
    name: 'cc.RotateBytest',
    extends: cc.ActionInterval,

    ctor: function (duration, deltaAngle) {
        this._deltaAngle = 0;
        this._startAngle = 0;
        deltaAngle !== undefined && this.initWithDuration(duration, deltaAngle);
    },

    /*
     * Initializes the action.
     * @param {Number} duration duration in seconds
     * @param {Number} deltaAngle deltaAngle in degrees
     * @return {Boolean}
     */
    initWithDuration:function (duration, deltaAngle) {
        if (cc.ActionInterval.prototype.initWithDuration.call(this, duration)) {
            this._deltaAngle = deltaAngle;
            return true;
        }
        return false;
    },

    clone:function () {

    },

    startWithTarget:function (target) {
        cc.ActionInterval.prototype.startWithTarget.call(this, target);
        this._startAngle = target.angle;
    },

    update:function (dt) {
        dt = this._computeEaseTime(dt);
        if (this.target) {
            this.target.angle = this._startAngle + this._deltaAngle * dt;
        }
    },

    reverse:function () {

    }
});