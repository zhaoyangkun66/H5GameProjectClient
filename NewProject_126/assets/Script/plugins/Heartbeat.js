let Heartbeat = cc.Class({
	extends: cc.Component,
	properties: {
		connected: false,
		connectCallBack: null,
		checkHeartbeatCallBack: null,
	},
	startHeartbeat: function (callBack) {
		cc.log("startstartstart")
		this.connected = true
		this.connectCallBack = callBack
		let scheduler = cc.director.getScheduler();
		if (!scheduler.isScheduled(this.checkHeartbeat, this)) {
			scheduler.schedule(this.checkHeartbeat, this, 0.5, false);// 心跳检测间隔时间
		}
	},
	setCheckHeartbeatCallBack: function (callBack) {
		this.checkHeartbeatCallBack = callBack
	},
	stop: function () {
		let scheduler = cc.director.getScheduler();
		scheduler.unschedule(this.checkHeartbeat, this);
	},
	checkHeartbeat: function () {
		if (this.connected == false) {
			this.connectCallBack()
		}
		if (this.checkHeartbeatCallBack) {
			this.checkHeartbeatCallBack()
		}
	},

});

window.heartbeat = new Heartbeat()