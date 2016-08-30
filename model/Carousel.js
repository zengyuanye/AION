
var mysql=require('./db.js');

function carousel() {};
module.exports=carousel;
carousel.prototype.intro=function (cb) {
      var sql='SELECT *FROM Carousel WHERE type=2 ORDER BY sort';
      mysql.query(sql,function (err,row) {
          if(err)return cb(err,null);
          return cb(null,row);
      });
};


