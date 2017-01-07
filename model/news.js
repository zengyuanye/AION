var mysql=require('./db.js');
function news() {}
module.exports=news;
news.prototype.newsNav=function (cb) {
        var sql='SELECT *FROM news limit 3';
        mysql.query(sql,function (err,row) {
            if(err) return cb(err,null);
            return cb(null,row);
        });
};

news.prototype.nav=function (cb) {
    var sql='SELECT a.* FROM news a   WHERE (SELECT COUNT( * ) FROM news WHERE class = a.class AND newsId < a.newsId  ) <4 AND class>0 ORDER BY a.class,a.sort LIMIT 0 , 30';
    mysql.query(sql,function (err,row) {
        if(err)return cb(err,null);
        var Slide1=[];
        var Slide2=[];
        var Slide3=[];
        var Slide=[];
        for(var i=0;i<row.length;i++)
        {
            switch (row[i].class)
            {
                case 1:
                    Slide1.push(row[i]);
                    break;
                case 2:
                    Slide2.push(row[i]);
                    break;
                case 3:
                    Slide3.push(row[i]);
                    break;
            }
        }
        Slide[0]=Slide1;
        Slide[1]=Slide2;
        Slide[2]=Slide3;
        cb(null,Slide);
    });
};