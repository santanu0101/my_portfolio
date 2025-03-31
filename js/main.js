$(document).ready(function()
{
    // navbar shrink
    $(window).on("scroll",function()
    {
        if($(this).scrollTop() > 90)
        {
            $(".navbar").addClass("navbar-shrink");
        }
        else
        {
            $(".navbar").removeClass("navbar-shrink");
        }
    })
    // parallax js
    function parallaxMouse()
    {
        if($('#parallax').length)
        {
            var scene = document.getElementById('parallax');
            var parallax = new Parallax(scene);
        }
    }
    parallaxMouse();
    // skills bar
    $(window).scroll(function()
    {
        var hT = $("#skill-bar-wrapper").offset().top,
        hH = $("#skill-bar-wrapper").outerHeight(),
        wH = $(window).height(),
        wS = $(this).scrollTop();
        if( wS > (hT+hH-1.4*wH))
        {
            jQuery('.skillbar-container').each(function()
            {
                jQuery(this).find('.skills').animate({
                    width:jQuery(this).attr('data-percent')
                }, 5000) // 5 seconds
            })
        }
    })
    // filter
    let $btns = $('.img-gallery .sortBtn .filter-btn');
    $btns.click(function(e) {
        $('.img-gallery .sortBtn .filter-btn').removeClass('active');
        e.target.classList.add('active');
        let selector = $(e.target).attr('data-filter');
        $('.img-gallery .grid').isotope
        ({
            filter:selector
        })
        return false;
    })
    $('.image-popup').magnificPopup
    ({
        type: 'image',
        gallery: { enabled: true}
    })
    // owl carousel
    $('.testimonial-slider').owlCarousel({
        loop:true,
        margin:0,
        responsiveClass:true,
        autoplay:true,
        responsive:{
            0:{
                items:1,
            },
            600:{
                items:2,
            },
            1000:{
                items:3,
            }
        }
    })
    // navbar collapse 
    $(".nav-link").on("click",function()
    {
        $(".navbar-collapse").collapse("hide");
    })
    // scroll
    $.scrollIt({
        topOffset:-50
    })
    
})


var Typed = new Typed(".text", {
    strings: ["Backend Developer", "Web Developer"],
    typeSpeed: 100,
    backSpeed: 100,
    backDelay: 1000,
    loop: true
  });


  const scriptURL = 'https://script.google.com/macros/s/AKfycbzkJWeQY0bvcK-j1ZWgwnAg2B4tZ-zj7L1v4NhfDjgrbVDO04s_54mMg_UBy-c4hDKJBw/exec'
  const form = document.forms['google-sheet']

  form.addEventListener('submit', e => {
    e.preventDefault()
    fetch(scriptURL, { method: 'POST', body: new FormData(form)})
      .then(response => setTimeout(function() { location.reload(true); }, 100))
      .catch(error => console.error('Error!', error.message))
  })