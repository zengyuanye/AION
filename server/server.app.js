var app    = require('express')();
var http   = require('http').Server(app);
var io     = require('socket.io')(http);
var crypto = require('crypto');
var md5  = crypto.createHash('md5');
var article =require('../model/article.js');
var articleList=new article;
articleList.list(function (err,row) {});
var output=articleList;

io.on('connection',function (socket) {
    console.log('net work connected ');

    socket.emit('message', output);

    setInterval(function () {
        articleList.list(function (err,row) {});
        var output=articleList;
        socket.emit('message', output);
        console.log('10秒更新了一次数据');
    },10000);

});


http.listen(5000, function(){
    console.log('listening on wy:5000');
});