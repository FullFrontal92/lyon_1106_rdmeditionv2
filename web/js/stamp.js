$(document).ready(function() {
    var promo = $('#sylius_product_promo');
    var news = $('#sylius_product_new');

    // Block Stamp checkbox so only one can be enable for a product

    if ( $(promo).attr('checked') == 'checked' ){
        $(promo).addClass('selected');
        disable(news);
    } else if ( $(news).attr('checked') == 'checked') {
        $(news).addClass('selected');
        disable(promo);
    }

    function disable($a) {
        $($a).prop('disabled', true);
    }
    function enable($a) {
        $a.removeAttr('disabled');
    }

    var promoCheck = promo.attr("checked");
    var newsCheck = news.attr("checked");

    // Block Stamp checkbox (new & promotion) : only one can be enable for a product

    if ( promoCheck == 'checked') {
        promo.addClass('selected');
        disable(news);
    } else if (newsCheck == 'checked' == 'checked') {
        news.addClass('selected');
        disable(promo);
    }

    $("label[for='sylius_product_promo']").click(function () {
        if (promo.hasClass("selected")){
            enable(news);
            promo.removeClass("selected");
        } else if (!news.hasClass("selected")) {
            disable(news);
            promo.addClass("selected");
        }
    });
    $("label[for='sylius_product_new']").click(function () {

        if (news.hasClass("selected")){
            enable(promo);
            news.removeClass("selected");
        } else if (!promo.hasClass("selected")){
            disable(promo);
            news.addClass("selected");
        }
    });

   /*
    started a script to disable saves change button if the input code on image is null
    $('.ui').click(function(){
    $("input[id^=sylius_product_images_][id$=_code]").each(function (i, el) {
        //It'll be an array of elements
        console.log(i, el);
        });
   })*/
});