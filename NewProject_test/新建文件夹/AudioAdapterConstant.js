let n ={} 
Object.defineProperty(n, "__esModule", {
    value: true
}),
n.MAX_INSTANCE_NUMBER = n.MAX_STACK_SOUND = n.DEFAULT_SPRITE = n.AUDIO_ADAPTER_STATE = n.AUDIO_ADAPTER_EVENT = void 0,
n.AUDIO_ADAPTER_EVENT = {
    LOADED: "load",
    LOAD_ERROR: "loaderror",
    PLAY: "play",
    STOP: "stop",
    END: "end",
    PAUSE: "pause",
    RESUME: "resume",
    FADED: "fade",
    SEEK: "seek",
    PLAY_ERROR: "playerror",
    RATE: "rate",
    VOLUME: "volume",
    MUTE: "mute"
},
n.AUDIO_ADAPTER_STATE = {
    UNLOADED: "unloaded",
    LODING: "loading",
    LOADED: "loaded"
},
n.DEFAULT_SPRITE = "__default",
n.MAX_STACK_SOUND = 50,
n.MAX_INSTANCE_NUMBER = 24,
module.exports = n