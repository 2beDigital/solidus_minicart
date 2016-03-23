Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'shadow_layer',
                     :insert_bottom => "div#content",
                     :text => '<div id="cd-shadow-layer"></div>')
                     
Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'add_mini_cart',
                     :insert_bottom => "div#content",
                     :partial => "spree/shared/minicart")
