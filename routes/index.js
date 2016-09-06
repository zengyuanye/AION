
var Contact =require('../model/contact.js');
var Carousel=require('../model/Carousel.js');
var news    =require('../model/news.js');
var article =require('../model/article.js');
module.exports=function (app) {
    app.get('/index',function (req,res) {
        //变量名不要和对象重名
       var  Car=new Carousel({});//声明对象
       var ad=new news();
        Car.intro(function (err,row) {
            if(err)
            {
            }else{

                ad.nav(function (err,navs) {
                    ad.newsNav(function (err,rows) {
                        res.render('index', {data:row,newsList:rows,navs:navs});
                    });
                });


            }
        });


    });




    app.get('/about',function (req,res) {
        res.render('about');
    });
    app.get('/contact',function (req,res) {
        res.render('contact');
    });
    app.get('/price',function (req,res) {
        res.render('price');
    });

    //产品推送
    app.get('/projects',function (req,res) {
        //var articles=new article;


        res.render('projects');
        // var socket=io.connect('ws://wy:5000/');
        //
        // socket.on('update',function (data) {
        //     console.dir(data.data);
        //     res.render('projects',{projectList:data.data});
        // });
        // articles.list(function (err,row) {
        //     if(err){}else{
        //         res.render('projects',{projectList:row});
        //     }
        // });

    });
    app.get('/services',function (req,res) {
        res.render('services');
    });

    app.get('/sidebar-right',function (req,res) {
        res.render('sidebar-right');
    });


    app.post('/edit',function (req,res) {
        var Contacter = new Contact({
                user:req.body.user,
                email:req.body.email,
                phone:req.body.phone,
                subject:req.body.subject,
                message:req.body.message
        });

        Contacter.save(function (err,row) {
           if(err)
           {
               req.flash('error', err);
               return res.redirect('/index');//注册失败返回主册页
           }
            req.session.row = row;//用户信息存入 session
            console.log(req.session.row);
            req.flash('success', '添加成功!');
            res.redirect('/index');//注册成功后返回主页
        });


    });
    



};

