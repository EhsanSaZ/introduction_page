/**
 * Created by ehsan on 7/25/2016.
 */
$(document).ready(function(){
    
    var  $window = $(window);

    //----------------------------------------

    //----------------------------------------
    var mrg_top_row1_col2_p =$("#row1_col2").height()-$("#row1_col2_p").height();
    $("#row1_col2_p").css("margin-top",mrg_top_row1_col2_p/2);

    $window.bind('resize', function() {
       var mrg_top_row1_col2_p =$("#row1_col2").height()-$("#row1_col2_p").height();
       $("#row1_col2_p").css("margin-top",mrg_top_row1_col2_p/2);
    });
    //--------------------------------------
    /*$(function() {
        $('a[href*="#"]:not([href="#"])').click(function() {
            if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                if (target.length) {
                    $('html, body').animate({
                        scrollTop: target.offset().top-60
                    }, 1000);
                    return false;
                }
            }
        });
    });
*/
    // Add smooth scrolling to all links
    $( "footer a,nav a").on('click', function(event) {

        // Make sure this.hash has a value before overriding default behavior
        if (this.hash !== "") {
            // Prevent default anchor click behavior
            event.preventDefault();

            // Store hash
            var hash = this.hash;

            // Using jQuery's animate() method to add smooth page scroll
            // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
            $('html, body').animate({
                scrollTop: $(hash).offset().top-$("#nav_bar").height()-10
            }, 800, function(){});
        } // End if
    });
});