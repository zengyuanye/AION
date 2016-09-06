var db=require('./db');
function article() {
    this.data=[];

};
module.exports=article;
article.prototype.list=function (cb) {

    var d=this;
    var sql='SELECT *FROM article ';
    db.query(sql,function (err,row) {

        if(err)return cb(err,null);

        d.data=row;
        return cb(null,row);
    });
};