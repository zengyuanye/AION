var gulp = require('gulp');
var concat = require('gulp-concat'); //合并文件
var minifycss = require('gulp-minify-css'); //压缩css
var less = require('gulp-less'); //编译less
var templateCache = require('gulp-angular-templatecache'); //压缩 ng模板
var uglify = require('gulp-uglify'); // 压缩 代码
var es = require('event-stream'); // 事件插件
var del = require("del"); //删除
var browserSync = require("browser-sync"); // 自动刷新
var chokidar = require('chokidar'); //监听

//编译less
gulp.task('less', function () {
    return gulp.src('./css/less/app.less')
        .pipe(less())
        .pipe(gulp.dest('./css'));
});

//压缩合并css
gulp.task('minifyCss', function () {
    var cssSrc = [ //需要按一定的顺序
        './css/bootstrap.css',
        './vendor/modules/angular-slider/angular-slider.css',
        './css/animate.css',
        './css/font-awesome.min.css',
        './css/simple-line-icons.css',
        './css/font.css',
        './css/app.css',
        './css/treeGrid.css',
        //'./css/jquery-ui.min.css',
        //'./css/jquery-ui-slider-pips.min.css',
        './css/jedate.css',
        './css/jquery.autocompleter.css',
        './css/_waves.css'
    ];
    return gulp.src(cssSrc) //压缩的文件
        .pipe(minifycss()) //执行压缩
        .pipe(concat('all.min.css')) // 拼接成 一个js
        .pipe(gulp.dest('./dist/css')); //输出到指定目录
});

//压缩依赖的js代码
gulp.task('libScripts', function () {
    var scriptsGlob = [
        './vendor/jquery/jquery.min.js',
        './vendor/angular/*.js',
        './vendor/angular/*/*.js',
        './vendor/modules/angular-file-upload/*.js',
        './vendor/jquery/bootstrap.js',
        //'./vendor/jquery/jquery-ui.min.js',
        //'./vendor/jquery/jquery-ui-slider-pips.js',
        './vendor/jquery/jedate/jquery.jedate.js',
        './vendor/jquery/jquery-autocompleter/jquery.autocompleter.js',
        './vendor/highcharts/highcharts.js',
        './vendor/highcharts/exporting.js',
        './vendor/highcharts/boost.js',
        './vendor/echarts/echarts.common.min.js',
        './vendor/ueditor/ueditor.config.js',
        './vendor/ueditor/ueditor.all.min.js'
    ];
    return gulp.src(scriptsGlob)
        .pipe(uglify()) //压缩 js代码
        .pipe(concat('lib.min.js')) // 拼接成 一个js
        .pipe(gulp.dest('dist/js')) //输出到指定目录
});

//压缩配置文件及服务指令等js
gulp.task('javaScripts', function () {
    var scriptsGlob = ['./js/*.js',
        '!./js/config.router.js',//排除路由文件
        './js/services/*.js',
        './js/filters/*.js',
        './js/directives/*.js',
        './js/controllers/bootstrap.js'
    ];
    return gulp.src(scriptsGlob)
        .pipe(uglify()) //压缩 js代码
        .pipe(concat('all.min.js')) // 拼接成 一个js
        .pipe(gulp.dest('dist/js')) //输出到指定目录
});

//压缩ng路由和模板
gulp.task('ngScripts', function () {
    var scriptsGlob = [ //路由和各页面控制器
        './js/config.router.js',
        './tpl/*/*.js',
        './tpl/*/*/*.js'
    ];
    var tpl = gulp.src(['./tpl/*/*.html','./tpl/*.html','./tpl/*/*/*.html'])
        .pipe(templateCache());
    return es.merge(es.merge(gulp.src(scriptsGlob), tpl)
        .pipe(concat('tpl.min.js')))
        .pipe(gulp.dest('dist/js'));
});

//清空 输出
gulp.task('clean', function (cb) {
    del(['dist/js','dist/css'], cb);
});

//监听css
gulp.task("watch:css", function () {
    var cssSrc = [
        './css/*.css',
    ];
    var lessSrc = ['./css/less/*.less'];
    gulp.watch(cssSrc, ['minifyCss'], browserSync.reload);
    gulp.watch(lessSrc, ['less', 'minifyCss'], browserSync.reload);
});

//监听配置文件及服务指令等js
gulp.task("watch:js", function () {
    var jsSrc = ['./js/*.js',
        '!./js/config.router.js',//排除路由文件
        './js/services/*.js',
        './js/filters/*.js',
        './js/directives/*.js',
        './js/controllers/bootstrap.js'
    ];
    gulp.watch(jsSrc, ['javaScripts'], browserSync.reload);
});

//监听路由控制器和模板文件
gulp.task("watch:ng", function () {
    var jsSrc = [
        './js/config.router.js',//路由
        './tpl/*/*.js',
        './tpl/*/*/*.js'
    ];
    var tplSrc = ['./tpl/*/*.html','./tpl/*.html','./tpl/*/*/*.html'];//模板
    gulp.watch(jsSrc, ['ngScripts'], browserSync.reload);
    gulp.watch(tplSrc, ['ngScripts'], browserSync.reload);
});

process.on('uncaughtException', function (e) {
    console.log(e.stack)
});

//gulp运行的时候
gulp.task("default", ['less', 'minifyCss', 'libScripts', 'javaScripts', 'ngScripts']);
gulp.task('watch', ['watch:css', 'watch:ng', 'watch:js']);
