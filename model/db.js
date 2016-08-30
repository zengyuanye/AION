
var settings=require('../settings');

var mysql=require('mysql');


var conn=mysql.createConnection({
    host: settings.host,
    user:settings.user,
    password:settings.password,
    database:settings.db,
    port:settings.port
});


module.exports=conn;

