var express     = require('express');
var path        = require('path');
var cookieParser= require('cookie-parser');// 这就是一个解析Cookie的工具。通过req.cookies可以取到传过来的cookie，并把它们转成对象。
var bodyParser  = require('body-parser');// node.js 中间件，用于处理 JSON, Raw, Text 和 URL 编码的数据。\
var multer      = require('multer');//node.js中间件,用于处理enctype="multipart/form-data"(设置表单的MiME编码)的表单数据
var fs          = require('fs');
var routes      = require('./routes/index');
var flash       = require('connect-flash');
var session     = require('express-session');
var app         = express();
var settings    =require('./settings.js');
app.set('port',process.env.PORT||4000);
app.set('views',path.join(__dirname,'views'));
app.set('view engine','ejs');
app.use(cookieParser());
app.use(session({
    secret: settings.cookieSecret,
    key: settings.db,//cookie name
    cookie: {maxAge: 1000 * 60 * 60 * 24 * 30},//30 days

}));
app.use(flash());
app.use(bodyParser.urlencoded({ extended: true }));//extended false,只有get请求
app.use(express.static(__dirname,'/views/assets'));
app.use(express.static(path.join(__dirname,'public')));
routes(app);


app.listen(app.get('port'),function () {
    console.log('Express server listening on port ' +app.get('port'));
});