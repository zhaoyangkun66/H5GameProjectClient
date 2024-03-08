//var// n = require("stringify").stringify
var o = require("parse");
module.exports = function (e) {
    return {
        parse: o(e)
    }
}
    ,
    module.exports.parse = require("parse")()
    //module.exports.stringify = n


