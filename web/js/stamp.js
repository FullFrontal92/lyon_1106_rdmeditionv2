$(document).ready(function() {
    var promo = $('#sylius_product_promo');
    var news = $('#sylius_product_new');
    var preorder =$('#sylius_product_preOrder');

    // Block Stamp checkbox so only one can be enable for a product

    if ( $(promo).attr('checked', 'checked') ){
        $(promo).addClass('selected');
        $(preorder).prop('disabled', true);
        $(news).prop('disabled', true);
    } else if ( $(news).attr('checked', 'checked') ){
        $(news).addClass('selected');
        $(preorder).prop('disabled', true);
        $(promo).prop('disabled', true);
    }else if( $(preorder).attr('checked', 'checked') ){
        $(preorder).addClass('selected')
        $(promo).prop('disabled', true);
        $(news).prop('disabled', true);
    }

    function disable($a, $b) {
            $($a).prop('disabled', true);
            $($b).prop('disabled', true);
    }
    function enable($a, $b) {
        $($a).removeAttr('disabled');
        $($b).removeAttr('disabled');
    }


    $("label[for='sylius_product_promo']").click(function () {
        if ($(promo).hasClass("selected")){
            enable(news, preorder);
            $(promo).removeClass("selected");
        } else {
            disable(news, preorder);
            $(promo).addClass("selected");
        }
    });
    $("label[for='sylius_product_new']").click(function () {

        if ($(news).hasClass("selected")){
            enable(promo, preorder);
            $(news).removeClass("selected");
        } else {
            disable(promo, preorder);
            $(news).addClass("selected");
        }
    });
    $("label[for='sylius_product_preOrder']").click(function () {

        if ($(preorder).hasClass("selected")){
            enable(news, promo);
            $(preorder).removeClass("selected");
        } else {
            disable(news, promo);
            $(preorder).addClass("selected");
        }
    });
});
