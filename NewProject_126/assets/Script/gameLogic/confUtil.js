let fishConf = require("fishConf")
let cannonLevelConf = require("cannonLevelConf")
let killParamConf = require("killParamConf")

let sortItems = function (conf) {
    let items = {}
    for (let i in conf) {
        items[conf[i].id] = conf[i]
    }
    return items
}
let sortItems2 = function (conf) {
    let items = {}
    for (let i in conf) {
        if (conf[i].typ != 11) {
            items[conf[i].id] = conf[i]
        }
    }
    return items
}
let confUtilThis = null

module.exports = confUtilThis = {

    fishConf: sortItems2(fishConf),
    cannonLevelConf: sortItems(cannonLevelConf),
    killParamConf: sortItems(killParamConf),
    setUserNameLabel(usrname) {
        let len = confUtilThis.SubStringGetTotalIndexWidth(usrname)
        cc.log("len", len)
        let playshortName = ""
        if (len > 10) {
            playshortName = usrname.substring(0, confUtilThis.SubStringUTF8Index(usrname, 10));
        } else {
            playshortName = usrname
        }
        return playshortName
    },
    //获取中英混合UTF8字符串的真实字符数量
    SubStringGetTotalIndexWidth(str) {
        let curIndex = 0
        let i = 0;
        let lastCount = 1;

        while (lastCount != 0) {
            i = i + 1;
            lastCount = confUtilThis.SubStringGetByteCount(str, i)
            if (lastCount == 3) {
                curIndex = curIndex + 1;
            }
            curIndex = curIndex + 1;
        }

        return curIndex - 1;
    },

    SubStringUTF8Index(str, index) {
        let curIndex = 0;
        let i = 0;
        let lastCount = 1;

        while (curIndex < index) {
            i = i + 1;
            lastCount = confUtilThis.SubStringGetByteCount(str, i)
            if (lastCount == 3) {
                curIndex = curIndex + 1;
            }
            curIndex = curIndex + 1;
        }

        return i;
    },

    //返回当前字符实际占用的字符数
    SubStringGetByteCount(str, index) {
        let curByte = str.charCodeAt(index)
        cc.log("charCodeAt", index, curByte)
        let byteCount = 0;
        if (curByte == "nan") {
            byteCount = 0
        }
        else if (curByte <= 255) {
            byteCount = 1
        }
        else if (curByte > 255) {
            byteCount = 3
        }

        return byteCount;
    }
}









