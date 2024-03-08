let data="界面名\t界面路径\t切换场景是否释放\t返回是否需要开启\t是否是独立界面\tbundleName\nFormName\tFormPath\tFormRelease\tReturnOpen\tIndependent\tbundleName\nUIGameBetCommon\tprefab/UIGameBetCommon\t0\tfalse\t0\tGameBetCom\nSlotTipsView\tprefab/SlotTipsView\t0\tfalse\t0\tGameBetCom\n\n\n\n\n\n"
console.log(data);
var fs = require('fs');
fs.writeFile('h_orange_atlas_symbols.atlas', data, function (err) { if (err) throw err; console.log('It\'s saved!'); });
