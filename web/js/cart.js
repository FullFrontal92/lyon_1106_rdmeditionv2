$(document).ready(function() {
    $('#sylius-cart-button').click(function() {
        if ( $(".popup").hasClass("top")){
            $(".popup").removeClass("top");
            $(".popup").addClass("bottom");
            $(".popup").css("top","30px");
            $(".popup").css("bottom","auto");
        }
    });
});