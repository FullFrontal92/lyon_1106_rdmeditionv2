$(document).ready(function() {
    $('#sylius-cart-button').click(function() {
        if ( $(".popup").hasClass("top")){
            $(".popup").removeClass("top");
            $(".popup").addClass("bottom");
            $(".popup").css("top","48px");
            $(".popup").css("bottom","auto");
        }
    });

    $('#sylius-cart-button').mouseenter(function() {
        $(".basketIcon").attr("src","/img/panierviolet.png" )
    });
    $('#sylius-cart-button').mouseleave(function() {
        $(".basketIcon").attr("src","/img/panier.png" )
    });
});