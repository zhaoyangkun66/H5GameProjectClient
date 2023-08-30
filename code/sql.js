var sqlserver = require('mssql');
var GlobalDef = require('./GlobalDef');
var sql = {}
var dbConfig = {
    server: "121.201.12.115", database: "GameUserDB", user: "GameDBSvrAccount", password: "FHd0dX%4tzIc@$ui", port: GlobalDef.sqlserverPort,
    options: {
        encrypt: false
    }
};

sqlserver.connect(dbConfig).then(function () {

}).catch(function (err) { console.log(err); });

sql.execute = function (procedure, params, func) {
    var req = new sqlserver.Request()
    if (params != null) {
        for (var index in params) {
            if (params[index].sqlType == "Int") {
                req.input(index, sqlserver.Int, params[index].inputValue);
            }
            else if (params[index].sqlType == "Float") {
                req.input(index, sqlserver.Float, params[index].inputValue);
            }
            else if (params[index].sqlType == "NVarChar") {
                req.input(index, sqlserver.NVarChar(params[index].size), params[index].inputValue);
            }
            else if (params[index].sqlType == "TinyInt") {
                req.input(index, sqlserver.TinyInt, params[index].inputValue);
            }
            else if (params[index].sqlType == "BigInt") {
                req.input(index, sqlserver.BigInt, params[index].inputValue);
            }
        }
    }
    req.execute(procedure).then(function (recordset) {
        // console.log(recordset);
        func(recordset)
    }).catch(function (err) {
        console.log(err);
        func(err)
    });
};

module.exports = sql

