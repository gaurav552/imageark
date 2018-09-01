<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
  <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
<script>

    $(".navbar").ready(function(){
    $(".navbar").css('background','transparent');
    });

    $(window).scroll(function () {
    if ($(window).scrollTop() >= 50) {
    $('.navbar').css('background','black');
    } else {
    $('.navbar').css('background','transparent');
    }
    });

    const sidenav=document.querySelector('.sidenav');
    M.Sidenav.init(sidenav,{
        edge:'right',

    });

    var elems = document.querySelectorAll('.carousel');
			M.Carousel.init(elems, {

				indicators:false,
				fullWidth:true,
			});

    $(window).on('load',function(){
        $('div.entire').masonry({
        columnWidth:'div.block',
        itemSelector:'div.block',
    });
    });

    
    $(window).on('load',function(){
        $('div.contender').masonry({
        columnWidth:'div.blocker',
        itemSelector:'div.blocker',
    });
    });



</script>