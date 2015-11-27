jQuery(document).ready(function($){
    var $menu_navigation = $('#main-nav'),
        $cart_trigger = $('#link-to-cart'),
        $close_cart = $('#close_cart'),
        $lateral_cart = $('#cd-cart'),
        $shadow_layer = $('#cd-shadow-layer'),
        $form_add_to_cart = $('div#cart-form form'),
        item = '',
        divs = $('#product-variants .variant-options'),
        selected = divs.find('a.selected');


    $form_add_to_cart.on('submit', function(event){
        var selected = divs.find('a.selected');
        if (selected.length == divs.length) {
            toggle_panel_visibility($lateral_cart, $shadow_layer, $('body'));
            $("#progress").slideDown();
        }
    });

    $cart_trigger.on('click', function(event){
        event.preventDefault();
        toggle_panel_visibility($lateral_cart, $shadow_layer, $('body'));
    });

    // Close Cart
    $close_cart.on('click', function(event){
        //close lateral menu (if it's open)
        $menu_navigation.removeClass('speed-in');
        toggle_panel_visibility($lateral_cart, $shadow_layer, $('body'));
    });

    // Close lateral cart or lateral menu
    $shadow_layer.on('click', function(){
        $shadow_layer.removeClass('is-visible');
        // firefox transitions break when parent overflow is changed, so we need to wait for the end of the trasition to give the body an overflow hidden
        if( $lateral_cart.hasClass('speed-in') ) {
            $lateral_cart.removeClass('speed-in').on('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', function(){
                $('body').removeClass('overflow-hidden');
            });
            $menu_navigation.removeClass('speed-in');
        } else {
            $menu_navigation.removeClass('speed-in').on('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', function(){
                $('body').removeClass('overflow-hidden');
            });
            $lateral_cart.removeClass('speed-in');
        }
    });

    /* remove item from cart  */
    $(document).on('click', 'form#update-minicart a.minicart_remove', function(e){
        $(this).parent().siblings('div[data-hook="minicart_item_quantity"]').find("input.line_item_quantity").val(0);
        $(this).parents('form').first().submit();
        e.preventDefault();
        $("#progress").slideDown();

        if(document.location.pathname == '/cart') {
            document.location.reload();
        }
    });


    $(document).on('click', 'form#update-minicart input.line_item_quantity', function(e){
        item = $(this);
        console.info("minicart click to change quantity item");
        var value = $(this).val();
        $(this).parent().siblings('div[data-hook="minicart_item_quantity"]').find("input.line_item_quantity").val(value);
        $(this).parents('form').first().submit();
        e.preventDefault();

        if(document.location.pathname == '/cart') {
            document.location.reload();
        }
    });

    $(document).on("ajax:beforeSend", "form[data-remote]", function(){
        if(item.length > 0) {
            item.parent().children($("div.loading")).css({"display": " inline-block", "visibility": "visible"});
            item.css({"visibility": "hidden", "display": "none"});
        }
    })

    $(document).on("ajax:success", "form[data-remote]", function(){
        if(item.length > 0) {
            item.parent().children($("div.loading")).css({"display": "none", "visibility": "hidden"});
            item.css({"visibility": "visible", "display": "inline"});
            console.log('Item:', item );
        } else {
            $("#progress").slideUp();
        }
        item = '';
    })
});

function toggle_panel_visibility ($lateral_panel, $background_layer, $body) {
    if( $lateral_panel.hasClass('speed-in') ) {
        // firefox transitions break when parent overflow is changed, so we need to wait for the end of the trasition to give the body an overflow hidden
        $lateral_panel.removeClass('speed-in').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', function(){
            $body.removeClass('overflow-hidden');
        });
        $background_layer.removeClass('is-visible');
    } else {
        $lateral_panel.addClass('speed-in').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', function(){
            $body.addClass('overflow-hidden');
        });
        $background_layer.addClass('is-visible');
    }
}