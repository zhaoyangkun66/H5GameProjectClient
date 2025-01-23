import { _decorator, Component, AudioSource } from 'cc';
const { ccclass, property } = _decorator;

@ccclass('AudioManager')
export class AudioManager extends Component {
    @property(AudioSource)
    playClick: AudioSource = null!;
    @property(AudioSource)
    killed: AudioSource = null!;
    @property(AudioSource)
    countdown: AudioSource = null!;
    @property(AudioSource)
    killerWieldKnife: AudioSource = null!;
    @property(AudioSource)
    win: AudioSource = null!;
    @property(AudioSource)
    fail: AudioSource = null!;

    onLoad() { }
    start() {
        this.play("bgm", true)
    }
    playKnife() {
        var i = this;
        this.killerWieldKnife.loop = true,
            this.killerWieldKnife.play(),
            this.scheduleOnce((function () {
                i.killerWieldKnife.stop()
            }
            ), 2.7)
    }
    playKilled() {
        var i = this;
        this.killed.loop = true,
            this.killed.play(),
            this.scheduleOnce((function () {
                i.killed.stop()
            }
            ), 3)
    }
    playClickAudio() {
        this.playClick.play()
    }
    playCountdown() {
        this.countdown.playing || (this.countdown.loop = true,
            this.countdown.play())
    }
    stopCountdown() {
        this.countdown.playing && this.countdown.stop()
    }
    playSuccess() {
        this.win.playing || this.win.play()
    }
    stopSuccess() {
        this.win.playing && this.win.stop()
    }
    playFail() {
        this.fail.playing || this.fail.play()
    }
    stopFail() {
        this.fail.playing && this.fail.stop()
    }
    play(i, n) {
        void 0 === n && (n = false),
            this[i] && (this[i].loop = n,
                this[i].play())
    }
    pause(i) {
        this[i] && this[i].pause()
    }
    stop(i) {
        this[i] && this[i].stop()
    }
}


