(function ($) {

    var socket=io.connect('ws://localhost:5000/');
    
    socket.on('message',function (data) {
        console.dir(data);
        $('.isotopeWrapper').html({});
        for(var i=0;i<data.data.length;i++){
            var d= $('<article class="col-sm-4 isotopeItem '+data.data[i].typeName+'"><div class="portfolio-item"><img src="'+data.data[i].imageUrl+'" alt="" /><div class="portfolio-desc align-center"><div class="folio-info"><a href="'+data.data[i].imageUrl+'" class="fancybox"><h5>'+data.data[i].title+'</h5>'+data.data[i].content+'</a></a></div></div></div></article>');

            $('.isotopeWrapper').prepend(d);
        }
    });
    // http://fonts.useso.com/css?family=Lato:400,700
   
})(jQuery);