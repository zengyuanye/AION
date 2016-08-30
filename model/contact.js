var mysql=require('./db');
var crypto = require('crypto');

function Contact(Contact)
{
    this.user=Contact.user;
    this.email=Contact.email;
    this.phone=Contact.phone;
    this.subject=Contact.subject;
    this.message=Contact.message;
}

module.exports = Contact;

Contact.prototype.save=function (cb) {
    // mysql.connect();
   var time= new Date().toISOString().
    replace(/T/, ' ').      // replace T with a space
    replace(/\..+/, '');
    var sql="insert into Contact values('','"+this.user+"','"+this.email+"','"+this.phone+"','"+this.subject+"','"+this.message+"','"+time+"','"+time+"')";
    mysql.query(sql,function (err,res) {
        if(err)
        {
            return cb(err,null);
        }
       return cb(null,res);

   });
    // mysql.end();

};
